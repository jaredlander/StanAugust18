root <- rprojroot::find_rstudio_root_file()
dataDir <- file.path(root, 'data')

# pest_data.rds
download.file(
	'https://query.data.world/s/v54wbyrbdcbeehu53d6zt7b4yglqaq',
	destfile=file.path(dataDir, 'pest_data.rds'),
	mode='wb')

# pest_data.rds
download.file(
	'https://query.data.world/s/rnujqu4scdabvtpi4vgjrir34t3gvw',
	destfile=file.path(dataDir, 'pest_data.rds'),
	mode='wb')

