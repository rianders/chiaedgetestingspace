import chi

chi.set("project_domain_name", "default")
chi.set("project_name", "CHI-220971")

# Before we go any further, we need to select which Chameleon site we will be using.
chi.use_site("CHI@Edge")

from chi import container
from chi import lease


machine_name = "raspberrypi4-64"
start, end = lease.lease_duration(days=2)
reservations = []
lease.add_device_reservation(reservations, count=1, machine_name=machine_name)
container_lease = lease.create_lease(f"{machine_name}-{start}", reservations)
lease_id = container_lease["id"]

print("Waiting for lease to start ...")
lease.wait_for_active(lease_id)
print("Done!") 

