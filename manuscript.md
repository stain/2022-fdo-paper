---
title: Evaluating FAIR Digital Object as a distributed object system
keywords:
- FDO
- distributed
- digital object
lang: en-GB
date-meta: '2022-05-09'
author-meta:
- Stian Soiland-Reyes
- Carole Goble
- Paul Groth
header-includes: |-
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta name="dc.title" content="Evaluating FAIR Digital Object as a distributed object system" />
  <meta name="citation_title" content="Evaluating FAIR Digital Object as a distributed object system" />
  <meta property="og:title" content="Evaluating FAIR Digital Object as a distributed object system" />
  <meta property="twitter:title" content="Evaluating FAIR Digital Object as a distributed object system" />
  <meta name="dc.date" content="2022-05-09" />
  <meta name="citation_publication_date" content="2022-05-09" />
  <meta name="dc.language" content="en-GB" />
  <meta name="citation_language" content="en-GB" />
  <meta name="dc.relation.ispartof" content="Manubot" />
  <meta name="dc.publisher" content="Manubot" />
  <meta name="citation_journal_title" content="Manubot" />
  <meta name="citation_technical_report_institution" content="Manubot" />
  <meta name="citation_author" content="Stian Soiland-Reyes" />
  <meta name="citation_author_institution" content="Department of Computer Science, The University of Manchester, UK" />
  <meta name="citation_author_institution" content="Informatics Institute, Faculty of Science, University of Amsterdam, NL" />
  <meta name="citation_author_orcid" content="0000-0001-9842-9718" />
  <meta name="twitter:creator" content="@soilandreyes" />
  <meta name="citation_author" content="Carole Goble" />
  <meta name="citation_author_institution" content="Department of Computer Science, The University of Manchester, UK" />
  <meta name="citation_author_orcid" content="0000-0003-1219-2137" />
  <meta name="twitter:creator" content="@CaroleAnneGoble" />
  <meta name="citation_author" content="Paul Groth" />
  <meta name="citation_author_institution" content="Informatics Institute, Faculty of Science, University of Amsterdam, NL" />
  <meta name="citation_author_orcid" content="0000-0003-0183-6910" />
  <meta name="twitter:creator" content="@pgroth" />
  <link rel="canonical" href="https://stain.github.io/2022-fdo-paper/" />
  <meta property="og:url" content="https://stain.github.io/2022-fdo-paper/" />
  <meta property="twitter:url" content="https://stain.github.io/2022-fdo-paper/" />
  <meta name="citation_fulltext_html_url" content="https://stain.github.io/2022-fdo-paper/" />
  <meta name="citation_pdf_url" content="https://stain.github.io/2022-fdo-paper/manuscript.pdf" />
  <link rel="alternate" type="application/pdf" href="https://stain.github.io/2022-fdo-paper/manuscript.pdf" />
  <link rel="alternate" type="text/html" href="https://stain.github.io/2022-fdo-paper/v/433b0eb66802e6b5ade251025ee19d7080107f0a/" />
  <meta name="manubot_html_url_versioned" content="https://stain.github.io/2022-fdo-paper/v/433b0eb66802e6b5ade251025ee19d7080107f0a/" />
  <meta name="manubot_pdf_url_versioned" content="https://stain.github.io/2022-fdo-paper/v/433b0eb66802e6b5ade251025ee19d7080107f0a/manuscript.pdf" />
  <meta property="og:type" content="article" />
  <meta property="twitter:card" content="summary_large_image" />
  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />
  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />
  <meta name="theme-color" content="#ad1457" />
  <!-- end Manubot generated metadata -->
bibliography:
- content/manual-references-sciwheel.yaml
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
manubot-clear-requests-cache: false
...






<small><em>
This manuscript
([permalink](https://stain.github.io/2022-fdo-paper/v/433b0eb66802e6b5ade251025ee19d7080107f0a/))
was automatically generated
from [stain/2022-fdo-paper@433b0eb](https://github.com/stain/2022-fdo-paper/tree/433b0eb66802e6b5ade251025ee19d7080107f0a)
on May 9, 2022.
</em></small>

## Authors



+ **Stian Soiland-Reyes**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0001-9842-9718](https://orcid.org/0000-0001-9842-9718)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [stain](https://github.com/stain)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [soilandreyes](https://twitter.com/soilandreyes)<br>
  <small>
     Department of Computer Science, The University of Manchester, UK; Informatics Institute, Faculty of Science, University of Amsterdam, NL
     · Funded by [BioExcel-2](https://bioexcel.eu/) (European Commission [H2020-INFRAEDI-2018-1 823830](https://cordis.europa.eu/project/id/823830)); [BY-COVID](https://by-covid.eu/) (European Commission [HORIZON-INFRA-2021-EMERGENCY-01 101046203](https://cordis.europa.eu/project/id/101046203))
  </small>

+ **Carole Goble**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0003-1219-2137](https://orcid.org/0000-0003-1219-2137)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [carolegoble](https://github.com/carolegoble)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [CaroleAnneGoble](https://twitter.com/CaroleAnneGoble)<br>
  <small>
     Department of Computer Science, The University of Manchester, UK
     · Funded by [BioExcel-2](https://bioexcel.eu/) (European Commission [H2020-INFRAEDI-2018-1 823830](https://cordis.europa.eu/project/id/823830)); [EOSC-Life](https://www.eosc-life.eu/) (European Commission [H2020-INFRAEOSC-2018-2 824087](https://cordis.europa.eu/project/id/824087)); [BY-COVID](https://by-covid.eu/) (European Commission [HORIZON-INFRA-2021-EMERGENCY-01 101046203](https://cordis.europa.eu/project/id/101046203))
  </small>

+ **Paul Groth**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0003-0183-6910](https://orcid.org/0000-0003-0183-6910)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [pgroth](https://github.com/pgroth)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [pgroth](https://twitter.com/pgroth)<br>
  <small>
     Informatics Institute, Faculty of Science, University of Amsterdam, NL
  </small>



## Abstract {.page_break_before}





## Interoperability Framework for Fast Data 



### Considering FDO/Web as interoperability framework for Fast Data

| *Quality* |  FDO w/ DOIP               | Web w/ Linked Data          |
|:----------|:--------------------------:|:--------------------------:|
| **Symbiotic**: _to what extent multiple applications can agree to interact/align/collaborate/cooperate_      |  Purpose of FDO is to enable federated machine actionable digital objects for scholarly purposes, in practice this also requires agreement of or compatibility between FDO types. FDO encourages research communities to develop common type registries to be shared across instances. In current DOIP practice, each service have their own types, attributes and operations.  The wider symbiosis is consistent use of PIDs. |  Web is loosely coupled and encourages collaboration and linking by URL. In practice, REST APIs end up being mandated centrally by dominant (often commercial) providers, which clients are required to use as-is with special code per service. Use of Linked Data enables common tooling and semantic mapping across differences.  |
| **Pragmatic**: _using interaction contracts so processes can be choreographed in workflows_      |  FDO types and operations enable detailed choreography (see CWFP). `0.TYPE/DOIPOperation` has lightweight definition of operation, `0.DOIP/Request` or `0.DOIP/Response` may give FDO Type or any other kind of "specifics" (incl. human readable docs). Semantics/purpose of operations not formalized (similar operations can be grouped with `0.DOIP/OperationReference`).   |  "Follow your nose" crawler navigation, which may lead to frequent dead ends. Operational composition, typically within a single API provider, documented by OpenAPI 3 [@{https://spec.openapis.org/oas/v3.1.0.html}], schema.org Actions [@{https://schema.org/docs/actions.html}), WSDL/SOAP [@{http://www.w3.org/TR/wsdl20-primer}], but frequently just as human-readable developer documentation/examples. |
| **Semantic**: _ensuring consistent understanding of messages, interoperability of rules, knowledge and ontologies_       |  FDO semantic enable navigation and typing. Every FDO have a type. Types maintained in FDO Type registries, which may add additional semantics, e.g. the ePIC [PID-InfoType for Model](https://hdl.handle.net/21.11104/c1a0ec5ad347427f25d6). No single type semantic, Type FDOs can link to existing vocabularies & ontologies. JSON-LD used within some FDO objects (e.g. DISSCO Digital Specimen, NIST Material Science schema) [@wittenburg_2022] |  Lightweight HTTP semantics for authenticity/navigation.  Semantic Type not commonly expressed on PID/header level, may be declared within Linked Data metadata. Semantic of type implied by Linked Data formats (e.g. OWL2, RDFS), although choice of type system may not be explicit.   |
| **Syntactic**: _serializing messages for digital exchange, structure representation_      |  DOIP serialize FDOs as JSON, metadata commonly use JSON, typed with JSON Schema. Multiple byte stream attachments of any media type.  | Textual HTTP headers (including any signposting), single byte stream of any media type, e.g. Linked Data formats (JSON-LD, Turtle, RDF/XML) or embedded in document (HTML with RDFa, JSON-LD or Microdata). XML previously main syntax used by APIs, JSON now dominant. |
| **Connective**: _transferring messages to another application, e.g. wrapping in other protocols_     |  DOIP [@handle:0.DOIP/DOIPV2.0] is transport-independent, commonly TLS TCP/IP port 9000), [DOIP over HTTP](https://www.cordra.org/documentation/api/doip-api-for-http-clients.html) | HTTP/1.1 (TCP/IP port 80), HTTP/1.1+TLS (TCP/IP 443), HTTP/2 (as HTTP/1* but binary), HTTP/3 (like HTTP/2+TLS but UDP)  |
| **Environmental**: _how applications are deployed and affected by its environment, portability_  |  Main DOIP implementation is [Cordra](https://www.cordra.org/), which can be single-instance or [distributed](https://www.cordra.org/documentation/configuration/distributed-deployment.html). Cordra [storage backends](https://www.cordra.org/documentation/configuration/storage-backends.html) include file system, S3, MongoDB (itself scalable). Unique DOIP protocol can be hard to add to existing Web application frameworks, although proxy services have been developed (e.g. B2SHARE adapter). |  HTTP services widely deployed in a myriad of ways, ranging from single instance servers, horizontally & vertically scaled application servers, to (for static content) multi-cloud Content-Delivery Networks (CDN).  Current scalable cloud technologies for Web hosting may not support HTTP features previously seen as important for Semantic Web, e.g. content negotiation and semantic HTTP status codes.  |

Table: Considering FDO and Web according to the levels of interoperability [@doi:10.1007/978-3-319-31861-5_1]:
{#tbl:fdo-web-interoperability-framework}


Mapping of Metamodel concepts:

| Metamodel concept | FDO/DOIP concept | Web/LD concept             |
|:-----------------:|:----------------:|:--------------------------:|
|  Resource         | FDO/DO           |  Resource                  |
|  Service          | DOIP service     |  Server/endpoint           |
|  Transaction      | (not supported)  |  Conditional requests, `409 Conflict` |
|  Process          | Extended operations  |  Primarily stateless, `100 Continue`, `202 Accepted` |
|  Operation        | DOIP Operation   |  Method, query parameters  |
|  Request          | DOIP Request     |  Request                   |
|  Response         | DOIP Response    |  Response                  |
|  Message          | Segment, `requestId` |  Message, Representation   |
|  Channel          | DOIP Transport protocol (e.g. TCP/IP, TLS). JSWS signatures. |  TCP/IP, TLS, UDP       |
|  Protocol         | DOIP 2.0, ++     |  HTTP/1.1, HTTP/2, HTTP/3  |
|  Link             | PID/Handle       |  URL                       |

Table: Mapping the Metamodel concepts from the Interoperability Framework for Fast Data [@doi:10.1007/978-3-319-31861-5_1] to equivalent concepts for FDO and Web:
{#tbl:metamodel-concepts}


## A comparison framework for middleware infrastructures



### Comparing FDO and Web as middleware infrastructures 


| *Quality* |  FDO w/ DOIP               | Web w/ Linked Data          |
|:----------|:--------------------------:|:--------------------------:|
| **Openness**: _framework enable extension of applications_ |  FDOs can be cross-linked using PIDs, pointing to multiple FDO endpoints. Custom DOIP operations can be exposed, although it is unclear if these can be outside the FDO server. PID minting requires Handle.net prefix subscription, or use of services like [Datacite](https://datacite.org/), [B2Handle](https://eudat.eu/services/userdoc/b2handle).  |  The Web is inheritedly open and made by cross-linked URLs.  Participation requires DNS domain purchase (many free alternatives also exists). PID minting can be free using PURL/ARK services, or can use DOI/Handle with HTTP redirects.  |
| **Scalability**: _application should be effective at many different scales_ |  No defined methods for caching or mirroring, although this could be handled by backend, depending on exposed FDO operations (e.g.  Cordra can scale to multiple backend nodes) |  Cache control headers reduce repeated transfer and assist explicit and transparent proxies for speed-up.  HTTP `GET` can be scaled to world-population-wide with Content-Delivery Networks (CDNs), while write-access scalability is typically manage by backend. |
| **Performance**: _efficient and predictable execution_ | DOIP has been shown moderately scalable to 100 millions of objects, create operation at 900 requests/second [@{https://www.rd-alliance.org/sites/default/files/Cordra.2022.pdf}]. DOIP protocol is reusable for many operations, multiple requests may be answered out of order (by `requestId`). Multiple connections possible. Setup is typically through TCP and TLS which adds latency. |  HTTP traffic is about 10% of global Internet traffic, excluding video and social networks [{@https://www.sandvine.com/global-internet-phenomena-report-2022}]. HTTP 1 connections are serial and reusable, and concurrent connections is common. HTTP/2 adds asynchronous responses and multiplexed streams [@doi:10.17487/RFC7540] but still has TCP+TLS startup costs.  For reduced latency [@{https://blog.cloudflare.com/http-3-vs-http-2/}], HTTP/3 [{@https://datatracker.ietf.org/doc/html/draft-ietf-quic-http-34}] use QUIC [@doi:10.17487/RFC9000]) rather than TCP, already adapted heavily (30% of EMEA traffic) of which [Instagram & Facebook video](https://engineering.fb.com/2020/10/21/networking-traffic/how-facebook-is-bringing-quic-to-billions/) is the majority of traffic. |
| **Distribution transparency**: _application perceived as a consistent whole rather than independent elements._  |  Each FDO is accessed separately along with its components (typically from the same endpoint). FDOs should provide the mandatory kernel metadata fields. FDOs of the same declared type typically share additional attributes (although that schema may not be declared). DOIP does not enforce metadata typing constraints, this need to be established as FDO conventions.  |  Each URL accessed separately. Common HTTP headers provide basic metadata, although it is often not reliable. A multitude of schemas and serializations for metadata exists, conventions might be implied by a declared profile or certain media types. Metadata is not always machine findable, may need pre-agreed API URI Templates [@doi:10.17487/RFC6570], content-negotiation [@{https://developer.mozilla.org/en-US/docs/Web/HTTP/Content_negotiation}] or FAIR Signposting [@{https://signposting.org/FAIR/}]. |
| **Access transparency**: _local/remote elements accessed similarly_ |  FDOs always accessed through PID indirection, but this means difficult to make private test setup.  |  Global HTTP protocol frequently used locally and behind firewalls, but at risk of non-global URIs (e.g. `http://localhost/object/1`) and SSL issues (e.g. self-signed certificates, local CAs) |
| **Location transparency**: _elements accessed without knowledge of physical location_  |  FDOs always accessed through PIDs. Multiple locations possible in Handle system, can expose geo-info.  |  PIDs and URL redirects. DNS aliases and IP routing can hide location. Geo-localized servers common for large cloud deployments.  |
| **Concurrency transparency**: _concurrent processing without interference_  |  No explicit concurrency measures. FDO kernel metadata can include checksum and date. |  HTTP operations are classified as being stateless/idempotent or not (e.g. `PUT` changes state, but can be repeated on failure), although these constraints are occassionally violated by Web applications. Cache control, `ETag` (~ checksum) and modification date in HTTP headers allows detection of concurrent changes on a single resource.  |
| **Failure transparency**: _service provisioning resiliant to failures_  |  DOIP status codes, e.g. `0.DOIP/Status.104`, additional codes can be added as custom attributes  |  HTTP [status codes](https://datatracker.ietf.org/doc/html/rfc7231#section-6.5) e.g. `404 Not Found`, structured error documents in Open API (??) |
| **Migration transparency**: _allow relocating elements without interferring application_ |  Update of PID record URLs, indirection through `0.TYPE/DOIPServiceInfo` (not always used consistently). No redirection from DOIP service. | HTTP `30x` status codes provide temporary or permanent redirections, commonly used for PURLs but also by endpoints. |
| **Persistence transparency**: _conceal deactivation/reactivation of elements from their users_ |  FDO requires use of PIDs for object persistence, including a thumbstone response for deleted objects. There is no guarantee that an FDO is immutable or will even stay the same type (note: CORDRA extends DOIP with [version tracking](https://www.cordra.org/documentation/design/object-versioning.html)).  |  URLs are not required to persist, although encouraged [@{https://www.w3.org/Provider/Style/URI}]. Persistence requires convention to use PIDs/PURLs and HTTP `410 Gone`.  An URL may change its content, change in type may sometimes force new URLs if exposing extensions like `.json`. Memento [@doi:10.17487/RFC7089] expose versioned snapshots. WebDAV `VERSION-CONTROL` method [@doi:10.17487/RFC3253] (used by SVN). |
| **Transaction transparency**: _coordinate execution of atomic/isolated transactions_ | No transaction capabilities declared by FDO or DOIP. Internal synchronization possible in backend for Extended operations.  |  Limited transaction capabilities (e.g. `If-Unmodified-Since`) on same resource. WebDAV [locking mechanisms](https://datatracker.ietf.org/doc/html/rfc4918#section-6) [@doi:10.17487/RFC4918] with `LOCK` and `UNLOCK` methods.  |
| **Modularity**: _application as collection of connected/distributed elements_ | FDOs are inheritedly modular using global PID spaces and their cross-references. In practice, FDOs of a given type are exposed through a single server shared within a particular community/institution.  |  The Web is inheritently modular in that distributed objects are cross-referenced within a global URI space. In practice, an API's set of resources will be exposed through a single HTTP service, but modularity enables fine-grained scalability in backend.  |
| **Encapsulation**: _separate interface from implementation. Specify interface as contract, multiple implementations possible_  |  Indirection by PID gives separation. FDO principles are protocol independent, although it may be unclear which protocol to use for which FDO (although `0.DOIP/Transport` can be specified after already contacting DOIP). Cordra supports [native DOIP](https://www.cordra.org/documentation/api/doip.html), [DOIP over HTTP](https://www.cordra.org/documentation/api/doip-api-for-http-clients.html) and [Cordra REST API](https://www.cordra.org/documentation/api/rest-api.html))  |  HTTP/1.1 semantics can seemlessly upgrade to HTTP/2 and HTTP/3. `http` vs `https` URIs exposes encryption detail [^1]. Implementation details may leak into URIs (e.g. `search.aspx`), countered by deliberate design of URI patterns [@{https://www.w3.org/Provider/Style/URI.html}] and PIDs via Persistent URLs (PURL).  |
| **Inheritance**: _Deriving specialized interface from another type_ | DOIP types nested with parents, implying shared FDO structures (unclear if operations are inherited). FDO establishes need for multiple Data Type Registries (e.g. managed by a community for a particular domain). Semantics of type system currently undefined for FDO and DOIP, syntactic types can also piggyback of FDO type's schema (e.g. [CORDRA `$ref`]((https://www.cordra.org/documentation/design/schemas.html#schema-references)) use of [JSON Schema references](https://json-schema.org/draft/2020-12/json-schema-core.html#references) [@{https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-00}])  | Syntactically Media Type with multiple suffixes [@{https://datatracker.ietf.org/doc/draft-ietf-mediaman-suffixes/00/}] (mainly used with `+json`), declaration of subtypes as profiles (RFC6906) [@doi:10.17487/RFC6906]. In metadata, semantic type systems (RDFS [@{http://www.w3.org/TR/rdf-schema/}], OWL2 [@{http://www.w3.org/TR/owl2-overview/}], SKOS [@{http://www.w3.org/TR/skos-reference}]). OpenAPI 3 [@{https://spec.openapis.org/oas/v3.1.0.html}] [inheritance and Polymorphism](https://spec.openapis.org/oas/v3.1.0#composition-and-inheritance-polymorphism). XML `xsd:schemaLocation` &`xsd:type` [@{http://www.w3.org/TR/xmlschema11-1/}], JSON `$schema` [@{https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-00}]), JSON-LD `@context` [@{http://www.w3.org/TR/json-ld/}]. Large number of domain-specific and general ontologies define semantic types, but finding and selecting remains a challenge. |
| **Signal interfaces**: _asynchronous handling of messages_ | DOIP 2.0 is synchronous, in FDO async operations undefined. Could be handled as custom jobs/futures FDOs | HTTP/2 [multiplexed streams](https://datatracker.ietf.org/doc/html/rfc7540#section-5) [@doi:10.17487/RFC7540], Web Sockets [@{https://websockets.spec.whatwg.org/}], Linked Data Notifications [@{https://www.w3.org/TR/ldn/}], AtomPub [@doi:10.17487/RFC5023], SWORD [@{https://swordapp.github.io/swordv3/swordv3.html}], Micropub, more typically ad-hoc jobs/futures REST resources |
| **Operation interfaces**: _defining operations possible on an instance, interface of request/response messages_ | CRUD predefined in DOIP, custom operations through `0.DOIP/Op.ListOperations` (can be FDOs of type `0.TYPE/DOIPOperation`, more typically local identifiers like `"getProvenance"`) | CRUD predefined in [HTTP methods](https://datatracker.ietf.org/doc/html/rfc7231#section-4.3) [@doi:10.17487/RFC7231], ([extended by registration](https://www.iana.org/assignments/http-methods/http-methods.xhtml)), URI Templates [@doi:10.17487/RFC6570], [OpenAPI operations](https://spec.openapis.org/oas/v3.1.0.html#operation-object) [@{https://spec.openapis.org/oas/v3.1.0.html}], HATEOAS incl. schema.org Actions [@{https://schema.org/docs/actions.html}), JSON HAL [@{https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-08}] & Link headers (RFC8288) [@doi:10.17487/RFC8288] |
| **Stream interfaces**: _operations that can handle continuous information streams_ | Undefined in FDO. DOIP can support multiple byte stream elements (need custom FDO type to determine stream semantics) | HTTP 1.1 [@doi:10.17487/RFC7230] [chunked transfer](https://datatracker.ietf.org/doc/html/rfc7230#section-4.1), HLS (RFC8216) [@doi:10.17487/RFC8216], MPEG-DASH (ISO/IEC 23009-1:2019) [@{https://www.iso.org/standard/79329.html}]  |

Table: Comparing FAIR Digital Object (with the DOIP 2.0 protocol [@handle:0.DOIP/DOIPV2.0]) and Web technologies (using Linked Data) as middleware infrastructures [@doi:10.5381/jot.2004.3.5.a2]
{#tbl:fdo-web-middleware}

[^1]: The `http` protocol (port 80) can in theory also upgrade [@doi:10.17487/RFC2817] to TLS encryption, as commonly used by [Internet Printing Protocol](https://www.rfc-editor.org/rfc/rfc8010.html#section-8.2) for `ipp` URIs, but on the Web, best practice is explicit `https` (port 443) URLs to ensure following links stay secure. 



## Assessing DOIP against FDO

| **Guideline**                                    | DOIP 2.0            | FDO suggestions     | Linked Data Platform | LDP suggestion       |
|:------------------------------------------------:|:-------------------:|:-------------------:|:--------------------:|:--------------------:|
| G1: _invest for many decades_                    |
| G2: _trustworthiness_                            |
| G3: _FAIR principles_                            |
| G4: _machine actionability_                      | 
| G5: _abstraction principle_                      |
| G6: _stable binding_                             |
| G7: _encapsulation_                              |
| G8: _technology independence_                    |
| G9: _standard compliance_                        |
| FDOF1: _PID as basis_                            |
| FDOF2: _PID record w/ type_                      | 
| FDOF3: _PID resolvable to bytestream & metadata_ |
| FDOF4: _Additional attributes_                   | 
| FDOF5: _Interface: operation by PID_             | 
| FDOF6: _CRUD operations + extensions_            |
| FDOF7: _FDOF Types related to operations_        |
| FDOF8: _Metadata as FDO, semantic assertions_    | 
| FDOF9: _Different metadata levels_               |
| FDOF10: _Metadata schemas by community_          |
| FDOF11: _FDO collections w/ semantic relations_  |
| FDOF12: _Deleted FDO preserve PID w/ tombstone_  |
Table: Checking FDO guidelines [@bonino_2019] against its current implementations as DOIP [@handle:0.DOIP/DOIPV2.0] and Linked Data Platform (LDP) [@{https://fairdigitalobjectframework.org/}], with suggestions for required additions.
{#tbl:fdo-checks}

The draft update specification _WD-RequirementSpec-1.0-20220317_ (at time of writing in internal review by FAIR Digital Object Forum) clarifies these definitions with equivalent identifiers [^2] and relates them to further FDO requiremes such as FDO Data Type Registries. 

[^2]: FDOF* renamed to FDOR*. FDOF3/FDOF4 are swapped to FDOR4/FDOR3 in _WD-RequirementSpec-1.0-20220317_.



## Assessing FDO against FAIR

| Principle | FDO/DOIP | FDO/LDP | Linked Data examples |
|:---------:|:--------:|:-------:|:--------------------:|
| **F1**: _PID for data/metadata_  | PIDs required (FDOF1). Handle, DOI. |  FDOF-IR (Identifier Record). PID can be any URI?  |  "Cool" URIs [@{https://www.w3.org/Provider/Style/URI}], PID using PURL services.  | 
| **F2**: _data has metadata_ | FDO has key-value metadata. Unclear how to link to additional metadata.  |  FDOF-IR links to multiple metadata records |  RDF-based metadata by content negotiation or FAIR Signposting. Embedded in landing page (RDFa).  |  
| **F3**: _metadata include PID_ | No, implicit as requests always use PID | PID only required in FDOF-IR record. | PID inclusion typical, but often inconsistent (e.g. `www.example.com` vs `example.com`) or missing (use of `<>` as _this_ subject) | 
| **F4**: _searchable registration_ | No, registries not required (except Data Type Registries). Handle registry only searchable by PID. | 
| **A1**: _retrieve by standard protocol_ | Retrievable from PID (FDOF3). Informal DOIP standard maintaned by DONA Foundation | Formal HTTP standards maintained by IETF |
| **A1.1**: _protocol open/free/universal_ | Required by G1. Partially realized, although Handle system is open protocol [@{10.17487/RFC3652}] it was covered by software patent [US6135646A](https://patents.google.com/patent/US6135646A/en) (expired in 2013(), and only implementation of `Handle.net` software currently only available by [public license](http://www.handle.net/HNRj/HNR-9-License.pdf)] (not OSI Open Source). [CORDRA](https://www.cordra.org/) free to use under BSD-like license, although not recognized by OSI as Open Source. |  DNS, HTTP, TLS, RDF standards are open, free and universal, multiple open source clients/servers exist. | 
| **A1.2**: _protocol can do auth&auth_ |  TLS certificates, `authentication` field (details unspecified) |  HTTP authentication, TLS certificates | 
| **A2**: _metadata even if data gone_ | FDO thumbstone required (FDOF12) | Unspecified, however FDOF-IR links to separate metadata records | `410 Gone` status infrequently used, without metadata. Possible [with signposting](https://w3id.org/a2a-fair-metrics/25-http-citeas-author-410-gone/) | 
| **I1**: _formal knowledge representation_ | Required by FDOF8 | Unspecified | Required when using RDF syntaxes.  |
| **I2**: _use FAIR vocabularies_ | Informally required by G3, formally by FDOF10 (but not in FDOR10) | Unspecified, implied by use of RDF? |  FAIR practices for LD vocabularies increasingly common, sometimes inconsistent (e.g. PURLs that don't resolve) or incomplete (e.g. unknown license)  | 
| **I3**: _qualified references_ | Implied by attributes to PIDs of other FDO | Unspecified | By definition (Linked Data is relating to pre-existing URIs [@{https://www.w3.org/standards/semanticweb/data}]). Link relations |
| **R1**: _relevant attributes_ | Required (FDOF4) | Unspecified. Multiple metadata records can allow multiple semantic profiles. |  Usually, however a plethora  | 
| **R1.1**: _clear data license_ | Unspecified (but will be in PID Kernal metadata?) | Unspecified | Required by DCAT
| **R1.2**: _detailed provenance_ |  Unspecified (some CORDRA types add `getProvenance` methods) | Unspecified  | W3C PROV-O, PAV |
| **R1.3**: _follows community standards_ | Recommended (FDOF4, FDOF10) |  Unspecified |  Common practice, specially in bioinformatics, e.g. BioSchemas [@{https://bioschemas.org/}], BioPortal [@{https://bioportal.bioontology.org/ontologies}] |

Table: Assessing how FAIR principles is/can be fulfilled by FDOs [@bonino_2019]  as DOIP [@handle:0.DOIP/DOIPV2.0], Linked Data Platform (LDP) [@{https://fairdigitalobjectframework.org/}], with examples øf existing Linked Data practices.

{#tbl:fair-fdos}


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
