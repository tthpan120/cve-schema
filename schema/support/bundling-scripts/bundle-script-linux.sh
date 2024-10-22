export CVE_SCHEMA_DIR=schema
export CVE_SCHEMA_FILENAME=CVE_Record_Format.json
mkdir ~/.npm-global
npm config set prefix ~/.npm-global
export PATH=~/.npm-global/bin:$PATH
npm --prefix "${CVE_SCHEMA_DIR}/support/schema2markmap" install "${CVE_SCHEMA_DIR}/support/schema2markmap"
npm install --loglevel verbose -g yargs ajv-formats@"^1.5.x" ajv-cli@"^4.0.x"
sed 's/file\://g' "${CVE_SCHEMA_DIR}/${CVE_SCHEMA_FILENAME}" > "${CVE_SCHEMA_DIR}/cve-schema.json"
node  "${CVE_SCHEMA_DIR}/support/schema2markmap/schema-bundle.js" "${CVE_SCHEMA_DIR}/cve-schema.json" "${CVE_SCHEMA_DIR}/docs/"
ajv compile -c ajv-formats -s "${CVE_SCHEMA_DIR}/docs/CVE_Record_Format_bundled.json"
ajv validate -c ajv-formats -s "${CVE_SCHEMA_DIR}/docs/CVE_Record_Format_bundled.json" -d "${CVE_SCHEMA_DIR}/docs/full-record-basic-example.json"
ajv validate -c ajv-formats -s "${CVE_SCHEMA_DIR}/docs/CVE_Record_Format_bundled.json" -d "${CVE_SCHEMA_DIR}/docs/full-record-advanced-example.json"
ajv validate -c ajv-formats -s "${CVE_SCHEMA_DIR}/docs/CVE_Record_Format_bundled_cnaPublishedContainer.json" -d "${CVE_SCHEMA_DIR}/docs/cnaContainer-advanced-example.json"
ajv validate -c ajv-formats -s "${CVE_SCHEMA_DIR}/docs/CVE_Record_Format_bundled_cnaPublishedContainer.json" -d "${CVE_SCHEMA_DIR}/docs/cnaContainer-basic-example.json"
