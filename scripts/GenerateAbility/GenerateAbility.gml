with (controller)
{
	if (contents)
	{
		zOffset -= 1;
		var newObj;
		//var firstDepth = layer_get_depth(layer_get_id("Instances"));
		var targetDepth = layer_get_depth(layer_get_id("Instances")) + zOffset;
		//var newLayer = layer_create(firstDepth + zOffset);
		switch (category)
		{
			case "Kit":
				//newObj = instance_create_layer(x - 272, y, newLayer, obj_kit);
				newObj = instance_create_depth(x - 272, y, targetDepth, obj_kit);
				break;
			case "Feat":
				newObj = instance_create_depth(x - 272, y, targetDepth, obj_feat);
				break;
			case "Talent":
				newObj = instance_create_depth(x - 272, y, targetDepth, obj_talent);
				break;
			default:
				
		}
		newObj.name = contents[?"name"];
	}
}