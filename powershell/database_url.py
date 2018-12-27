from ..utils import BasicSegment, warn
import os
import re

LOW_BATTERY_THRESHOLD = 20


class Segment(BasicSegment):
	def add_to_powerline(self):
		# See discussion in https://github.com/banga/powerline-shell/pull/204
		# regarding the directory where battery info is saved
		if not 'DATABASE_URL' in os.environ:
			return
		databaseUrl = os.getenv('DATABASE_URL')
		if not databaseUrl:
			return
		m = re.search(r"^postgres://([^:@/]+(:[^@/]+)?@)?[^:/]+(:\d+)?/(\w+)$", databaseUrl)
		if not m:
			return
		databaseName = m.group(4)
		if databaseName:
			self.powerline.append(" db:%s " % os.path.basename(databaseName),
									self.powerline.theme.AWS_PROFILE_FG,
									self.powerline.theme.AWS_PROFILE_BG)
