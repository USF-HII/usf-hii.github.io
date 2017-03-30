# Labdata Standard (Draft)

*A new concept to be introduced shortly is the Provider Airlock, an intermediary location
between the ingress of a Provider Inbox and the final resting place of a Provider Repository.*

## Purpose

Establish a formal process for the ingress of omics data from a Provider into a Study's Data Coordination Center.

## Namespace

- The Labdata Standard reserves `/labdata` as its logical namespace and is often referred to simply as "labdata"

- Studies maintain a first level namespace under `/labdata`, e.g. `/labdata/teddy`

## Roles

- Study (e.g. `teddy`)
  - Data Coordination Center (DCC)
    - DCC Administration (DCCA)
    - DCC Operations (DCCO)
  - Provider (e.g. `abc`)

## Study Ingress Lifecycle

- 1. Provider transmits one or more Datafolders to their Provider Inbox (e.g. `/labdata/teddy/abc/_ftp/inbox`)
- 2. Provider communicates with the DCCA who adds an Ingress Request at https://github.com/usf-hii/docs/tree/master/omics/labdata.md consisting of:
  - a. Study (e.g. `teddy`)
  - b. Provider ID (e.g. `abc`)
  - c. Path to one or more Datafolders within the Provider Inbox (e.g. `omics-transmission-2017-01-01`)
  - d. New Bundle to ingress the Datafolders under (e.g. `Omics-WGS-1`)
- 3. DCCA notifies DCCO of Ingress Request
- 4. DCCO reviews and executes Ingress Request
- 5. DCCO updates Ingress Log at https://github.com/usf-hii/docs/tree/master/omics/labdata.md
- 6. DCCO notifies DCCA upon completion

## Concepts

### Bundle

A Bundle is a granular unit of ingressed data from a Provider for a Study analogous to a lockbox.

A Bundle is created by moving one or more Datafolders from a Provider Inbox
into a Provider Repository establishing a uniquely namespaced, immutable unit of data at a particular point in time.

This immutability establishes provenance and simplifies future archiving and replication.

A Bundle's unique namespace is built from the following elements:

- `labdata_namespace`: `/labdata/`
- `study_name` (e.g. `teddy/`)
- `provider_name` (e.g. `abc/`)
- `bundle_prefix` + `-` + `bundle_instance` (e.g. `Omics-WGS-1`)

The Bundle Instance is an incremental integer associated with a Bundle Prefix.
Starting at `1`, the next available Bundle Instance for a particular Bundle Prefix should be selected,
(e.g. `Omics-WGS-1`, `Omics-WGS-2`, `Lipidomics-1`, `Lipidomics-2`).

When it is difficult to choose a meaningful Bundle Prefix, the default of `General` (e.g. `General-1`, `General-2`, etc..) should be used.

#### Example

For the Study `teddy` with the Provider `abc` the full path of this example Bundle will be:

    /labdata/teddy/abc/Omics-WGS-1

The ingressed Datafolder contents under this Bundle will be:

    /labdata/teddy/abc/Omics-WGS-1/omics-transmission-2017-01-01/XYZ123/XYZ123_1.fastq.bz2
    /labdata/teddy/abc/Omics-WGS-1/omics-transmission-2017-01-01/XYZ123/XYZ123_2.fastq.bz2

### Datafolder

The atomic unit of ingress for a Provider is a Datafolder.

- `datafolder_name`: `omics-transmission-2017-01-01`
- `datafolder_path`: `XYZ123/XYZ123_1.fastq.bz2`

#### Example

In our example, the Datafolder name is `omics-transmission-2017-01-01` located under the `teddy` study in the `abc` Provider Inbox:

    /labdata/teddy/abc/_ftp/inbox/omics-transmission-2017-01-01

This is a Omics WGS transfer of fastq files for Study `teddy` by the Provider `abc` with the full paths of the Datafolder Files as:

    /labdata/teddy/abc/_ftp/inbox/omics-transmission-2017-01-01/XYZ123/XYZ123_1.fastq.bz2
    /labdata/teddy/abc/_ftp/inbox/omics-transmission-2017-01-01/XYZ123/XYZ123_2.fastq.bz2

However within the Datafolder Name `omics-transmission-2017-01-01`, the Datafolder Path for these two files is referenced as:

    omics-transmission-2017-01-01/XYZ123/XYZ123_1.fastq.bz2
    omics-transmission-2017-01-01/XYZ123/XYZ123_2.fastq.bz2

The reason we include the Datafolder Name in the Datafolder Path is because more than one Datafolder may be ingressed into a Bundle.

Keeping the original Datafolder Name (i.e. parent folder) allows us to ingress more than one Datafolder into a Bundle.

### Provider

A Provider is an entity such as a lab (e.g. `abc`) associated with a Study (e.g. `teddy`)
which transfers data into its Provider Inbox for ingress.

It is important to note that although the named entity may be associated with more than one Study, e.g. `rdn` and `teddy`,
it is the `<study>` + `<provider>` pair that identify a provider.

An entity providing data for two different Studies will have two different Provider Inboxs.

### Provider Inbox


A Provider Inbox is established by creating an account for the Study/Provider pair on
the DCC secure file transfer endpoint, `dccmirror.epi.usf.edu`.

For a new Study/Provider to establish an account on `dccmirror.epi.usf.edu` the DCCA should forward the following to the DCCO:

- Provider account: `<study><provider_id>` (e.g. `teddyabc`)
- Provider source IPs: (e.g. `37.34.43.100`)


The externally accessible hostname for transfers is `dccmirror.epi.usf.edu` (External IP: 131.247.54.25).

Files should be transferred to the `inbox` directory which maps internally to the Provider Inbox
`/labdata/<study>/<provider_id>/_ftp/inbox`.

---

*Note: Under special circumstances, physical shipments of removable media will be accepted as it
can provide the same semantics as a Provider Inbox.
Physical shipments should be coordinated as far in advance as possible since logistics
may introduce substantial lead time.*

### Provider Airlock

The intent of a Provider Airlock is to maintain a clear separation between data in transit
within the Provider Inbox from the Provider Repository.

### Provider Repository

The Provider Repository is the final resting place of ingressed Bundles for a Studies's Provider.

### Provider Repository Index

For every Bundle ingress, a corresponding Provider Repository Index is generated and housed under the path:

    /labdata/<study>/<provider>/_index/<bundle>.txt

The Data provider Repository Index format consists of three colon-separated fields for each file within a Bundle:

- 1. File path relative to the Bundle's path
- 2. File MD5 checksum
- 3. File size in bytes

For example, if the `abc` laboratory transfers data for the `teddy` Study, the following index might be generated:

    $ echo; head -n2 /labdata/teddy/abc/_index/Omics-WGS-1.txt

    omics-transmission-2017-01-01/XYZ123/XYZ123_1.fastq.bz2:613e54f9f6bdc33963e2a8e3c2fb73ff:89936774
    omics-transmission-2017-01-01/XYZ123/XYZ123_2.fastq.bz2:1b5dc6a54d792b6f65aab7ed88c9c70b:86621121

## Directory structure

The directory structures are listed in the sequence of ingress:

- Provider Inbox
  - Path: `/labdata/<study>/<provider_id>/_ftp/inbox/<datafolder_name>/<datafolder_path>`
  - Example: `/labdata/teddy/abc/_ftp/inbox/omics-transmission-2017-01-01/XYZ123/XYZ123_1.fastq.bz2`
    - `<study>`: `teddy`
    - `<provider_id>`: `abc`
    - `<datafolder>`: `omics-transmission-2017-01-01`
    - `<datafolder_path>`: `XYZ123/XYZ123_1.fastq.bz2`

- Provider Airlock
  - Path: `/labdata/<study>/<provider_id>/_airlock/<bundle_prefix>-<bundle_instance>/<datafolder_name>/<datafolder_path>`
  - Example: `/labdata/teddy/abc/_airlock/Omics-WGS-1/omics-transmission-2017-01-01/XYZ123/XYZ123_1.fastq.bz2`
    - `<study>`: `teddy`
    - `<provider_id>`: `abc`
    - `<bundle_prefix>`: `Omics-WGS`
    - `<bundle_instance>`: `1`
    - `<datafolder>`: `omics-transmission-2017-01-01`
    - `<datafolder_path>`: `XYZ123/XYZ123_1.fastq.bz2`

- Provider Repository
  - Path: `/labdata/<study>/<provider_id>/<bundle_prefix>-<bundle_instance>/<datafolder_name>/<datafolder_path>`
  - Example: `/labdata/teddy/abc/Omics-WGS-1/omics-transmission-2017-01-01/XYZ123/XYZ123_1.fastq.bz2`
    - `<study>`: `teddy`
    - `<provider_id>`: `abc`
    - `<bundle_prefix>`: `Omics-WGS`
    - `<bundle_instance>`: `1`
    - `<datafolder_name>`: `omics-transmission-2017-01-01`
    - `<datafolder_path>`: `XYZ123/XYZ123_1.fastq.bz2`

