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
  <link rel="alternate" type="text/html" href="https://stain.github.io/2022-fdo-paper/v/cf1ed8888599bdb9ee85f2e53c33fb9db3b10d41/" />
  <meta name="manubot_html_url_versioned" content="https://stain.github.io/2022-fdo-paper/v/cf1ed8888599bdb9ee85f2e53c33fb9db3b10d41/" />
  <meta name="manubot_pdf_url_versioned" content="https://stain.github.io/2022-fdo-paper/v/cf1ed8888599bdb9ee85f2e53c33fb9db3b10d41/manuscript.pdf" />
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
([permalink](https://stain.github.io/2022-fdo-paper/v/cf1ed8888599bdb9ee85f2e53c33fb9db3b10d41/))
was automatically generated
from [stain/2022-fdo-paper@cf1ed88](https://github.com/stain/2022-fdo-paper/tree/cf1ed8888599bdb9ee85f2e53c33fb9db3b10d41)
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




<!--

TODO: Remove quotes from cited articles

-->

## Interoperability Framework for Fast Data 

Quotes from [@doi:10.1007/978-3-319-31861-5_1]:
 
> **Symbiotic**: Expresses the purpose and intent of two interacting applications to engage in a mutually beneficial agreement. Enterprise engineering is usually the topmost level in application interaction complexity, since it goes up to the human level, with governance and strategy heavily involved. Therefore, it maps mainly onto the symbiotic category, although the same principles apply (in a more rudimentary fashion) to simpler subsystems. This can entail a tight coordination under a common governance (if the applications are controlled by the same entity), a joint venture agreement (if the two applications are substantially aligned), a collaboration involving a partnership agreement (if some goals are shared) or a mere value chain cooperation (an outsourcing contract).
> 
> **Pragmatic**: The effect of an interaction between a consumer and a provider is the outcome of a contract, which is implemented by a choreography that coordinates processes, which in turn implement workflow behaviour by orchestrating service invocations. Languages such as Business Process Execution Language (BPEL ) support the implementation of processes and Web Services Choreography Description Language (WS-CDL) is an example of a language that allows choreographies to be specified.
> 
> **Semantic**: Both interacting applications must be able to understand the meaning of the content of the messages exchanged: both requests and responses. This implies interoperability in rules, knowledge and ontologies, so that meaning is not lost when transferring a message from the context of the sender to that of the receiver. Semantic languages and specifications such as Web Ontology Language (OWL ) and Resource Description Framework (RDF), map onto this category.
> 
> **Syntactic**: This deals mainly with form, rather than content. Each message has a structure composed of data (primitive applications) according to some structural definition (its schema). Data need to be serialized to be sent over the network as messages using representations such as XML or JSON .
> 
> **Connective**: The main objective is to transfer a message from the context of one application to the other regardless of its content. This usually involves enclosing that content in another message with control information and implementing a message protocol (such as SOAP or HTTP) over a communications network according to its own protocol (such as TCP/IP) and possibly resorting to routing gateways if different networks are involved.
> 
> **Environmental**: Each application also interacts with the environment (e.g. a cloud or a server) in which it is deployed, anewed or by migration. The environment’s management application programming interface (API) and the infrastructure level that the application requires will most likely have impact on the way applications interact, particularly if they are deployed in (or migrate between) different environments, from different vendors. Interoperability between an application and the environment in which it is deployed usually known as portability.
> 
> **Metamodel**: Resource, Service, Transaction, Process, Response, Operation, Request, Channel, Protocol, Link

### Considering FDO/Web as interoperability framework for Fast Data

| *Quality* |  FDO w/ DOIP               | Web w/ Linked Data          |
|:----------|:--------------------------:|:--------------------------:|
| **Symbiotic**      |  Purpose of FDO is to enable federated machine actionable digital objects for scholarly purposes, in practice this also requires agreement of or compatibility between FDO types. FDO encourages research communities to develop common type registries to be shared across instances. In current DOIP practice, each service have their own types, attributes and operations.  The wider symbiosis is consistent use of PIDs. |  Web is loosely coupled and encourages collaboration and linking by URL. In practice, REST APIs end up being mandated centrally by dominant (often commercial) providers, which clients are required to use as-is with special code per service. Use of Linked Data enables common tooling and semantic mapping across differences.  |
| **Pragmatic**      |  FDO types and operations enable detailed choreography (see CWFP). `0.TYPE/DOIPOperation` has lightweight definition of operation, e.g. `0.DOIP/Request`/`0.DOIP/Response` may give FDO Type (or any other kind of "specifics"). Semantics/purpose of operations not formalized (similar operations can be grouped with `0.DOIP/OperationReference`).   |  "Follow your nose" crawler navigation, which may lead to frequent dead ends. Operational composition, typically within a single API provider, by OpenAPI 3 [@{https://spec.openapis.org/oas/v3.1.0.html}], schema.org Actions [@{https://schema.org/docs/actions.html}), WSDL/SOAP [@{http://www.w3.org/TR/wsdl20-primer}] |
| **Semantic**       |  FDO semantic enable navigation and typing. Every FDO have a type. Types maintained in FDO Type registries, which may add additional semantics, e.g. the ePIC [PID-InfoType for Model](https://hdl.handle.net/21.11104/c1a0ec5ad347427f25d6). No single type semantic, Type FDOs can link to existing vocabularies & ontologies. JSON-LD used within some FDO objects (e.g. DISSCO Digital Specimen, NIST Material Science schema) [@wittenburg_2022] |  Lightweight HTTP semantics for authenticity/navigation.  Semantic Type not commonly expressed on PID/header level, may be declared within Linked Data metadata. Semantic of type implied by Linked Data formats (e.g. OWL2, RDFS), although choice of type system may not be explicit.   |
| **Syntactic**      |  DOIP serialize FDOs as JSON, metadata commonly use JSON, typed with JSON Schema. Multiple byte stream attachments of any media type.  | Textual HTTP headers (including any signposting), single byte stream of any media type, e.g. Linked Data formats (JSON-LD, Turtle, RDF/XML) or embedded in document (HTML with RDFa, JSON-LD or Microdata). XML previously main syntax used by APIs, JSON now dominant. |
| **Connective**     |  DOIP [@handle:0.DOIP/DOIPV2.0] is transport-independent, commonly TLS TCP/IP port 9000), [DOIP over HTTP](https://www.cordra.org/documentation/api/doip-api-for-http-clients.html) | HTTP/1.1 (TCP/IP port 80), HTTP/1.1+TLS (TCP/IP 443), HTTP/2 (as HTTP/1* but binary), HTTP/3 (like HTTP/2+TLS but UDP)  |
| **Environmental**  |  Main DOIP implementation is [Cordra](https://www.cordra.org/), which can be single-instance or [distributed](https://www.cordra.org/documentation/configuration/distributed-deployment.html). Cordra [storage backends](https://www.cordra.org/documentation/configuration/storage-backends.html) include file system, S3, MongoDB (itself scalable). Unique DOIP protocol can be hard to add to existing Web application frameworks, although proxy services have been developed (e.g. B2SHARE adapter). |  HTTP services widely deployed in a myriad of ways, ranging from single instance servers, horizontally & vertically scaled application servers, to (for static content) multi-cloud Content-Delivery Networks (CDN).  Current scalable cloud technologies for Web hosting may not support HTTP features previously seen as important for Semantic Web, e.g. content negotiation and semantic HTTP status codes.  |

Table: Considering FDO and Web according to the levels of interoperability [@doi:10.1007/978-3-319-31861-5_1]:
{#tbl:fdo-web-interoperability-framework}


Mapping of Metamodel concepts:

| Metamodel concept | FDO/DOIP concept | Web/LD concept |
|:-----------------:|:----------------:|:--------------:|
|  Resource         | FDO/DO           |  Resource       |
|  Service          | DOIP service     |  Server/endpoint |
|  Transaction      | (not supported)  |  Conditional requests, `409 Conflict` |
|  Process          | Extended operations  |  Primarily stateless, `100 Continue`, `202 Accepted` |
|  Operation        | DOIP Operation   |  Method        |
|  Request          | Request          |  Request       |
|  Response         | Response         |  Response      |
|  Message          | Segment          |  Message, Representation |
|  Channel          | TCP/IP, TLS      | TCP/IP, TLS, UDP |
|  Protocol         | DOIP 2.0, ++     | HTTP/1.1, HTTP/2, HTTP/3  |
|  Link             | PID/Handle       | URL          |

Table: Mapping the Metamodel concepts from the Interoperability Framework for Fast Data [@doi:10.1007/978-3-319-31861-5_1] to equivalent concepts for FDO and Web:
{#tbl:metamodel-concepts}


## A comparison framework for middleware infrastructures

Quotes from [@doi:10.5381/jot.2004.3.5.a2]:

> * **Openness**: The middleware infrastructure should enable extending the applications built on top of it in various ways. (e.g., adding, removing, upgrading, composing services, etc.).
> * **Scalability**: The middleware infrastructure should facilitate the effective operation of the applications at many different scales.
> * **Performance**: The middleware infrastructure should enable the efficient and predictable, if needed, execution of the applications that are built on top of it.
> * **Distribution transparency**: is the property that determines if the application is perceived by users, or developers as a whole rather than as a collection of independent constituent elements. The requirement for distribution transparency is quite generic and it is usually refined into a number of more specific transparencies including:
>   * **Access transparency**: the infrastructure should enable accessing local and remote application elements in the same way.
>   * **Location transparency**: the infrastructure should enable accessing the application elements without knowledge of their physical location.
>   * **Concurrency transparency**: the infrastructure should allow concurrent processing on resources, without interference.
>   * **Failure transparency**: the infrastructure should enable service provisioning despite the occurrence of failures.
>   * **Migration transparency**: the infrastructure should provide means for changing the location of elements of the application without compromising the application’s correct operation, i.e. without affecting the elements that depend on the migrated elements.
>   * **Persistence transparency**: the infrastructure should provide means for concealing the deactivation and reactivation of elements from other elements that are using them.
>   * **Transaction transparency**: the infrastructure should provide means for coordinating the execution of atomic and isolated transactions.
> 
> **Modularity**: The application should consist of a collection of elements, each one providing services, used by the others. Modularity enables the identification of dependencies between the elements that make up the system. Consequently, it allows determining, which elements are affected by the eventual addition, removal or upgrade of services.
> 
> **Encapsulation**: For each constituent element, there is a clear separation between the element’s interface and implementation. The interface is a well-defined specification of the provided services, the contract between the element and the entities using it. The implementation is the realization of the provided services. In general, it is safe to change the implementation of an element as long as the element’s interface is preserved. Changing an element’s interface without compromising the overall application integrity requires that the rest of the application does not depend on this particular interface, at the time of the change.
> 
> **Inheritance**: An interface specification (resp. implementation) may be derived from another one. The derived interface (resp. implementation) provides at least the services of the base interface (resp. implementation). Inheritance enables the vertical and horizontal composition of services.
> 
> **Signal interfaces**: defining asynchronous stimuli that can be handled by instances of engineering objects, providing these interfaces.
> 
> **Operation interfaces**: defining operations that can be invoked on instances, providing these interfaces. Invoking an operation causes a request message to be sent by the invoker to the invoked instance. Invoking an operation may further result in a reply sent from the invoked instance to the invoking instance.
> 
> **Stream interfaces**: defining operations that can be invoked on instances, providing these interfaces. The result of invoking a stream operation is the continuous conveyance of information from the invoked instance to the invoking instance.


### Comparing FDO and Web as middleware infrastructures 

DOIP [@handle:0.DOIP/DOIPV2.0]

| *Quality* |  FDO w/ DOIP               | Web w/ Linked Data          |
|:----------|:--------------------------:|:--------------------------:|
| **Openness** |  FDOs can be cross-linked using PIDs, pointing to multiple FDO endpoints. Custom DOIP operations can be exposed, although it is unclear if these can be outside the FDO server. PID minting requires Handle.net prefix subscription, or use of services like [Datacite](https://datacite.org/), [B2Handle](https://eudat.eu/services/userdoc/b2handle).  |  The Web is inheritedly open and made by cross-linked URLs.  Participation requires DNS domain purchase (many free alternatives also exists). PID minting can be free using CURL/ARK services, or can use DOI/Handle with HTTP redirects.  |
| **Scalability** |  No defined methods for caching or mirroring, although this could be handled by backend, depending on exposed FDO operations (e.g.  Cordra can scale to multiple backend nodes) |  Cache control headers reduce repeated transfer and assist explicit and transparent proxies for speed-up.  HTTP `GET` can be scaled to world-population-wide with Content-Delivery Networks (CDNs), while write-access scalability is typically manage by backend. |
| **Performance** | DOIP has been shown moderately scalable to 100 millions of objects, create operation at 900 requests/second [@{https://www.rd-alliance.org/sites/default/files/Cordra.2022.pdf}]. DOIP protocol is serial and reusable, but multiple connections can be made. Setup is typically through TCP and TLS which adds latency. |  HTTP traffic is about 10% of global Internet traffic, excluding video and social networks [{@https://www.sandvine.com/global-internet-phenomena-report-2022}]. HTTP 1 connections are serial and reusable, and concurrent connections is common. HTTP/2 adds multiplexed streams [@{doi:10.17487/RFC7540}] but still has TCP+TLS startup costs.  For reduced latency [@{https://blog.cloudflare.com/http-3-vs-http-2/}], HTTP/3 [{@https://datatracker.ietf.org/doc/html/draft-ietf-quic-http-34}] use QUIC [{@doi:10.17487/RFC9000}]) rather than TCP, already adapted heavily (30% of EMEA traffic) of which [Instagram & Facebook video](https://engineering.fb.com/2020/10/21/networking-traffic/how-facebook-is-bringing-quic-to-billions/) is the majority of traffic. |
| **Distribution transparency** | Each FDO is accessed separately along with its components (typically from the same endpoint). FDOs should provide the mandatory kernel metadata fields. FDOs of the same declared type typically share additional attributes (although that schema may not be declared). DOIP does not enforce metadata typing constraints, this need to be established as FDO conventions.  |  Each URL accessed separately. Common HTTP headers provide basic metadata, although it is often not reliable. A multitude of schemas and serializations for metadata exists, conventions might be implied by a declared profile or certain media types. Metadata is not always machine findable, may need pre-agreed API URI Templates [@doi:10.17487/RFC6570], content-negotiation [@{https://developer.mozilla.org/en-US/docs/Web/HTTP/Content_negotiation}] or FAIR Signposting [@{https://signposting.org/FAIR/}]. |
| **Access transparency** |  FDOs always accessed through PID indirection, but this means difficult to make private test setup. | Global HTTP protocol frequently used locally and behind firewalls, but at risk of non-global URIs (e.g. `http://localhost/object/1`) and SSL issues (e.g. self-signed certificates, local CAs) |
| **Location transparency** |  FDOs always accessed through PIDs. Multiple locations possible in Handle system, can expose geo-info. | PIDs and URL redirects. DNS aliases and IP routing can hide location. Geo-localized servers common for large cloud deployments.  |
| **Concurrency transparency** | No explicit concurrency measures. FDO kernel metadata can include checksum and date. |  HTTP operations are classified as being stateless/idempotent or not (e.g. `PUT` changes state, but can be repeated on failure), although these constraints are occassionally violated by Web applications. Cache control, `ETag` (~ checksum) and modification date in HTTP headers allows detection of concurrent changes on a single resource.  |
| **Failure transparency** |  DOIP status codes, e.g. `0.DOIP/Status.104`, additional codes can be added as custom attributes | HTTP [status codes](https://datatracker.ietf.org/doc/html/rfc7231#section-6.5) e.g. `404 Not Found`, structured error documents in Open API (??) |
| **Migration transparency** |   | HTTP `300` status can provide temporary or permanent redirections. |
| **Persistence transparency** |  FDO requires use of PIDs for object persistence, including a thumbstone response for deleted objects. There is no guarantee that an FDO is immutable or will even stay the same type (note: CORDRA extends DOIP with [version tracking](https://www.cordra.org/documentation/design/object-versioning.html)).  |  URLs are not required to persist, although encouraged [@{https://www.w3.org/Provider/Style/URI}]. Persistence requires convention to use PIDs/CURLs and HTTP `410 Gone`.  An URL may change its content, change in type may sometimes force new URLs if exposing extensions like `.json`. Memento [@{10.17487/RFC7089}] expose versioned snapshots. WebDAV adds `VERSION-CONTROL` method [@{doi:10.17487/RFC3253}] (used by SVN). |
| **Transaction transparency** | No transaction capabilities declared by FDO or DOIP.  |  Limited transaction capabilities (e.g. `If-Unmodified-Since`) on same resource. WebDAV [locking mechanisms](https://datatracker.ietf.org/doc/html/rfc4918#section-6) [@doi:10.17487/RFC4918] with `LOCK` and `UNLOCK` methods.  |
| **Modularity** | FDOs are inheritedly modular using global PID spaces and their cross-references. In practice, FDOs of a given type are exposed through a single server shared within a particular community/institution.  |  The Web is inheritently modular in that distributed objects are cross-referenced within a global URI space. In practice, an API's set of resources will be exposed through a single HTTP service, but modularity enables fine-grained scalability in backend.  |
| **Encapsulation** |  Indirection by PID gives separation. FDO principles are protocol independent, although it may be unclear which protocol to use for which FDO (although `0.DOIP/Transport` can be specified after already contacting DOIP). Cordra supports [native DOIP](https://www.cordra.org/documentation/api/doip.html), [DOIP over HTTP](https://www.cordra.org/documentation/api/doip-api-for-http-clients.html) and [Cordra REST API](https://www.cordra.org/documentation/api/rest-api.html)) | HTTP/1.1 semantics can seemlessly upgrade to HTTP/2 and HTTP/3. `http` vs `https` URIs exposes encryption detail [^1]. Implementation details may leak into URIs (e.g. `search.aspx`), countered by deliberate design of URI patterns [@{https://www.w3.org/Provider/Style/URI.html}] and PIDs via Persistent URLs (PURL).  |
| **Inheritance** | FDO establishes need for multiple Data Type Registries (e.g. managed by a community for a particular domain). Semantics of type system currently undefined for FDO and DOIP, for syntactic type can piggyback of FDO type's schema (e.g. [CORDRA `$ref`]((https://www.cordra.org/documentation/design/schemas.html#schema-references)) use of [JSON Schema references](https://json-schema.org/draft/2020-12/json-schema-core.html#references) [@{https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-00}])  | Syntactically Media Type with multiple suffixes [@{https://datatracker.ietf.org/doc/draft-ietf-mediaman-suffixes/00/}] (mainly used with `+json`), declaration of subtypes as profiles (RFC6906) [@doi:10.17487/RFC6906]. In metadata, semantic type systems (RDFS [@{http://www.w3.org/TR/rdf-schema/}], OWL2 [@{http://www.w3.org/TR/owl2-overview/}], SKOS [@{http://www.w3.org/TR/skos-reference}]). OpenAPI 3 [@{https://spec.openapis.org/oas/v3.1.0.html}] [inheritance and Polymorphism](https://spec.openapis.org/oas/v3.1.0#composition-and-inheritance-polymorphism). XML `xsd:schemaLocation` &`xsd:type` [@{http://www.w3.org/TR/xmlschema11-1/}], JSON `$schema` [@{https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-00}]), JSON-LD `@context` [@{http://www.w3.org/TR/json-ld/}]. Large number of domain-specific and general ontologies define semantic types, but finding and selecting remains a challenge. |
| **Signal interfaces** | DOIP 2.0 is synchronous, in FDO async operations undefined. Could be handled as custom jobs/futures FDOs | HTTP/2 [multiplexed streams](https://datatracker.ietf.org/doc/html/rfc7540#section-5) [@{doi:10.17487/RFC7540}], Web Sockets [@{https://websockets.spec.whatwg.org/}], Linked Data Notifications [@{https://www.w3.org/TR/ldn/}], custom jobs/futures REST resources |
| **Operation interfaces** | CRUD predefined in DOIP, custom operations through `0.DOIP/Op.ListOperations` (can be FDOs of type `0.TYPE/DOIPOperation`, more typically local identifiers like `"getProvenance"`) | CRUD predefined in [HTTP methods](https://datatracker.ietf.org/doc/html/rfc7231#section-4.3) [@doi:10.17487/RFC7231], ([extended by registration](https://www.iana.org/assignments/http-methods/http-methods.xhtml)), URI Templates [@doi:10.17487/RFC6570], [OpenAPI operations](https://spec.openapis.org/oas/v3.1.0.html#operation-object) [@{https://spec.openapis.org/oas/v3.1.0.html}], HATEOAS incl. schema.org Actions [@{https://schema.org/docs/actions.html}), JSON HAL [@{https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-08}] & Link headers (RFC8288) [@doi:10.17487/RFC8288] |
| **Stream interfaces** | Undefined in FDO, DOIP can support multiple byte stream elements (custom FDO type to determine their semantics?) | HTTP 1.1 [@doi:10.17487/RFC7230] [chunked transfer](https://datatracker.ietf.org/doc/html/rfc7230#section-4.1), HLS (RFC8216) [@doi:10.17487/RFC8216], MPEG-DASH (ISO/IEC 23009-1:2019) [@{https://www.iso.org/standard/79329.html}]  |

Table: Comparing FAIR Digital Object (with the DOIP 2.0 protocol [@handle:0.DOIP/DOIPV2.0]) and Web technologies (using Linked Data) as middleware infrastructures [@doi:10.5381/jot.2004.3.5.a2]
{#tbl:fdo-web-middleware}

[^1]: The `http` protocol (port 80) can in theory also upgrade [@doi:10.17487/RFC2817] to TLS encryption, as commonly used by [Internet Printing Protocol](https://www.rfc-editor.org/rfc/rfc8010.html#section-8.2) for `ipp` URIs, but on the Web, best practice is explicit `https` (port 443) URLs to ensure following links stay secure. 



## Assessing DOIP against FDO



## Assessing FDO against FAIR



## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
