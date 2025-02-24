#include "../furniture-config-model.lp".

partial(ooasp_instantiation("f1", "furniture_instance_4")).

% Chair
partial(ooasp_isa("furniture_instance_4", "Chair", ("Chair", 1))).
partial(ooasp_attribute_value("furniture_instance_4", "material", ("Chair", 1), "Metal")).
partial(ooasp_attribute_value("furniture_instance_4", "legs", ("Chair", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_4", "height", ("Chair", 1), 80)).

% Table
partial(ooasp_isa("furniture_instance_4", "Table", ("Table", 1))).
partial(ooasp_attribute_value("furniture_instance_4", "material", ("Table", 1), "Glass")).
partial(ooasp_attribute_value("furniture_instance_4", "legs", ("Table", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_4", "length", ("Table", 1), 220)).
partial(ooasp_attribute_value("furniture_instance_4", "width", ("Table", 1), 110)).

% Table legs 
partial(ooasp_isa("furniture_instance_4", "Legs", ("Legs", 1))).
partial(ooasp_attribute_value("furniture_instance_4", "type", ("Legs", 1), "Metal")).
partial(ooasp_associated("furniture_instance_4", "Table_legs", ("Table", 1), ("Legs", 1))).

% Table top
partial(ooasp_isa("furniture_instance_4", "Top", ("Top", 1))).
partial(ooasp_attribute_value("furniture_instance_4", "material", ("Top", 1), "Glass")).
partial(ooasp_associated("furniture_instance_4", "Table_top", ("Table", 1), ("Top", 1))).

% Chair legs
partial(ooasp_isa("furniture_instance_4", "Legs", ("Legs", 2))).
partial(ooasp_attribute_value("furniture_instance_4", "type", ("Legs", 2), "Metal")).
partial(ooasp_associated("furniture_instance_4", "Chair_legs", ("Chair", 1), ("Legs", 2))).
