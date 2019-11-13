# defaults
add_field("level","image")
add_field("publish",true)

# copy from source
copy_field("digital_object_id","title")
copy_field("digital_object_id","digital_object_id")

copy_field("digital_object_id","file_versions.0.file_uri")
replace_all('file_versions.0.file_uri','\.','_')
append('file_versions.0.file_uri','.tif')

add_field("file_versions.0.use_statement","image-master")
add_field("file_versions.0.xlink_actuate_attribute","onLoad")
add_field("file_versions.0.xlink_show_attribute","embed")
add_field("file_versions.0.file_format_name","tiff")
add_field("file_versions.0.publish","true")

copy_field("digital_object_id","file_versions.1.file_uri")
replace_all('file_versions.1.file_uri','\.','_')
append('file_versions.1.file_uri','.jpg')

add_field("file_versions.1.use_statement","image-master")
add_field("file_versions.1.xlink_actuate_attribute","onLoad")
add_field("file_versions.1.xlink_show_attribute","embed")
add_field("file_versions.1.file_format_name","tiff")
add_field("file_versions.1.publish","true")




# add_field('language','eng')
# move_field('restrictions_apply','restrictions')

# remove_field('resource.ref')
# # extract unique parent ID
# substring('parent.ref',33,37)

# # perform lookup
# do list(path => parent)
#   lookup("ref","lookup_blake.csv");
# end

# # move title
# move_field('title','digital_object_id')

# # flatten title
# move_field('parent.ref','title')

# remove_field('level')
# add_field('digital_object_type','still_image')
# add_field('level','image')

# # [json] create external id
# #   hash => digital_object_id
# paste(external_ids.0.external_id,digital_object_id)
# add_field('external_ids.0.source','digital_object_id hashed by Catmandu')
# md5sum('external_ids.0.external_id')

# # [json] file versions
# copy_field('digital_object_id','digital_object_id_uri')
# replace_all('digital_object_id_uri','\.','_')
# replace_all('digital_object_id_uri','\w ','')
# copy_field("digital_object_id_uri","file_versions.0.file_uri")
# prepend("file_versions.0.file_uri","http://eu-dhc.s3.amazonaws.com/master/blake/")
# append("file_versions.0.file_uri",".tif")
# add_field("file_versions.0.use_statement","image-master")
# add_field("file_versions.0.xlink_actuate_attribute","onLoad")
# add_field("file_versions.0.xlink_show_attribute","embed")
# add_field("file_versions.0.file_format_name","tiff")
# add_field("file_versions.0.publish","true")

# copy_field("digital_object_id_uri","file_versions.1.file_uri")
# prepend("file_versions.1.file_uri","http://eu-dhc.s3.amazonaws.com/service/blake/")
# append("file_versions.1.file_uri",".jpg")
# add_field("file_versions.1.use_statement","image-service")
# add_field("file_versions.1.xlink_actuate_attribute","onLoad")
# add_field("file_versions.1.xlink_show_attribute","embed")
# add_field("file_versions.1.file_format_name","jpeg")
# add_field("file_versions.1.publish","true")

# remove_field("suppress")

# remove_field('digital_object_id_uri')

# add_field('collection_management.processors','Digital object records processed by Minor Science. Koha-to-repository crosswalks available here [http://dhc.aarome.org/crosswalks].')
# add_field('collection_management.rights_determined','true')
# add_field('collection_management.processing_started_date','2016-08-15')
# add_field('collection_management.processing_status','new')
# add_field('collection_management.processing_priority','medium')

# # [json] rights statement
# remove_field("rights_statements")
# add_field('rights_statements.0.permissions','Publication restricted. [https://dhc.aarome.org/copyright]')
# add_field('rights_statements.0.restrictions','Closed access material. [https://dhc.aarome.org/usage]')
# add_field('rights_statements.0.active','true')
# add_field('rights_statements.0.rights_type','institutional_policy')
# add_field('rights_statements.0.restriction_start_date','2016-08-15')
