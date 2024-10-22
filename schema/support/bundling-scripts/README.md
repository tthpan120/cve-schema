# Creating the bundled CVE Record Format JSON schema files
Use the scripts in this directory to create the bundled CVE Record Format JSON schema files.

## Steps
1. Create a directory structure where all of these files, and no others, exist and
the files correspond to the current version of the CVE Record Format:
- schema/tags/reference-tags.json
- schema/tags/adp-tags.json
- schema/tags/cna-tags.json
- schema/CVE_Record_Format.json
- schema/imports/cvss/cvss-v4.0.json
- schema/imports/cvss/cvss-v2.0.json
- schema/imports/cvss/cvss-v3.0.json
- schema/imports/cvss/cvss-v3.1.json
- schema/docs/cnaContainer-rejected-example.json
- schema/docs/full-record-advanced-example.json
- schema/docs/full-record-basic-example.json
- schema/docs/cnaContainer-basic-example.json
- schema/docs/cnaContainer-advanced-example.json
- schema/support/schema2markmap/package.json
- schema/support/schema2markmap/schema-bundle.js

2. Run the Linux or Windows Bash script

5. Observe that the bundled files are created in schema/docs/, and that all of the example files are valid according to the schema files.

6. In the process, several types of error messages will occur, which can be ignored at least temporarily. There should be no other distinct types of errors:

- A. Complaints about EOL software packages:
     npm warn deprecated json-schema-ref-parser@9.0.9: Please switch to @apidevtools/json-schema-ref-parser

- B. Complaints about unfixed vulnerabiliies:
     11 vulnerabilities (2 moderate, 9 high)

- C. Complaints about performance/usability:
     npm warn deprecated inflight@1.0.6: This module is not supported, and leaks memory. Do not use it. Check out lru-cache if you want a good and tested way to coalesce async requests by a key value, which is much more comprehensive and powerful.

- D. Complains about EOL versions:
     npm warn deprecated glob@7.2.3: Glob versions prior to v9 are no longer supported

- E. "strict mode" errors related to https://github.com/CVEProject/cve-schema/issues/272 such as:
   strict mode: missing type "object" for keyword "additionalProperties" at "https://cveproject.github.io/cve-schema/schema/docs/CVE_Record_Format_bundled_cnaPublishedContainer.json#" (strictTypes)
   strict mode: missing type "object" for keyword "properties" at "https://cveproject.github.io/cve-schema/schema/docs/CVE_Record_Format_bundled_cnaPublishedContainer.json#" (strictTypes)
   strict mode: missing type "object" for keyword "required" at "https://cveproject.github.io/cve-schema/schema/docs/CVE_Record_Format_bundled_cnaPublishedContainer.json#" (strictTypes)
   strict mode: missing type "object" for keyword "properties" at "https://cveproject.github.io/cve-schema/schema/docs/CVE_Record_Format_bundled_cnaPublishedContainer.json#" (strictTypes)
   strict mode: missing type "object" for keyword "required" at "https://cveproject.github.io/cve-schema/schema/docs/CVE_Record_Format_bundled_cnaPublishedContainer.json#" (strictTypes)
   strict mode: missing type "object" for keyword "properties" at "https://cveproject.github.io/cve-schema/schema/docs/CVE_Record_Format_bundled_cnaPublishedContainer.json#" (strictTypes)
