import models.Event

# Get list from frontend - create list for now

events = [('0001', 2), ('0003', 3), ('0004', 3), ('0005', 1),
		  ('0006', 2), ('0008', 3), ('0009', 1), ('0010', 1),
		  ('0011', 3), ('0012', 2), ('0015', 3), ('0017', 2),
		  ('0018', 3), ('0019', 1), ('0020', 3), ('0002', 3)]


for e in Event.objects.all():
	print(1)
