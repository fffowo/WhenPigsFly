item_index = check_inventory_for_item(name);

if (item_index != -1)
{
    instance_destroy(self);
}

