---
title: Evaluating FAIR Digital Object as a distributed object system
keywords:
- FDO
- distributed
- digital object
lang: en-GB
date-meta: '2022-05-05'
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
  <meta name="dc.date" content="2022-05-05" />
  <meta name="citation_publication_date" content="2022-05-05" />
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
  <link rel="alternate" type="text/html" href="https://stain.github.io/2022-fdo-paper/v/d34820e084e902ed5c19062af0097a567d3a4198/" />
  <meta name="manubot_html_url_versioned" content="https://stain.github.io/2022-fdo-paper/v/d34820e084e902ed5c19062af0097a567d3a4198/" />
  <meta name="manubot_pdf_url_versioned" content="https://stain.github.io/2022-fdo-paper/v/d34820e084e902ed5c19062af0097a567d3a4198/manuscript.pdf" />
  <meta property="og:type" content="article" />
  <meta property="twitter:card" content="summary_large_image" />
  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />
  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />
  <meta name="theme-color" content="#ad1457" />
  <!-- end Manubot generated metadata -->
bibliography:
- content/manual-references-sciwheel.bib
- content/manual-references.json
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
manubot-clear-requests-cache: false
...






<small><em>
This manuscript
([permalink](https://stain.github.io/2022-fdo-paper/v/d34820e084e902ed5c19062af0097a567d3a4198/))
was automatically generated
from [stain/2022-fdo-paper@d34820e](https://github.com/stain/2022-fdo-paper/tree/d34820e084e902ed5c19062af0097a567d3a4198)
on May 5, 2022.
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

* **Symbiotic** (purpose and intent):  Motivations to have the interaction, with varying levels of mutual knowledge of governance, strategy and goals.    
* **Pragmatic** (reaction and effects): Management of the effects of the interaction at the levels of choreography, process and service e 
* **Semantic** (meaning of content): _Inference Rule base_. Interpretation of a message in context, at the levels of rule, known application components and relations and definition of concepts 
* **Syntactic** (notation of representation): _Representation of application components, in terms of composition, primitive components and their serialization format in messages 
* **Connective** (transfer protocol): Lower-level formats and network protocols involved in transferring a message from the context of the sender to that of the receiver 
* **Environmental** (deployment and migration) Environment in which each application is deployed and managed, including the portability problems raised by migrations 

**Symbiotic**: Expresses the purpose and intent of two interacting applications to engage in a mutually beneficial agreement. Enterprise engineering is usually the topmost level in application interaction complexity, since it goes up to the human level, with governance and strategy heavily involved. Therefore, it maps mainly onto the symbiotic category, although the same principles apply (in a more rudimentary fashion) to simpler subsystems. This can entail a tight coordination under a common governance (if the applications are controlled by the same entity), a joint venture agreement (if the two applications are substantially aligned), a collaboration involving a partnership agreement (if some goals are shared) or a mere value chain cooperation (an outsourcing contract).

**Pragmatic**: The effect of an interaction between a consumer and a provider is the outcome of a contract, which is implemented by a choreography that coordinates processes, which in turn implement workflow behaviour by orchestrating service invocations. Languages such as Business Process Execution Language (BPEL ) [31] support the implementation of processes and Web Services Choreography Description Language (WS-CDL) is an example of a language that allows choreographies to be specified.

**Semantic**: Both interacting applications must be able to understand the meaning of the content of the messages exchanged: both requests and responses. This implies interoperability in rules, knowledge and ontologies, so that meaning is not lost when transferring a message from the context of the sender to that of the receiver. Semantic languages and specifications such as Web Ontology Language (OWL ) and Resource Description Framework (RDF), map onto this category.

**Syntactic**: This deals mainly with form, rather than content. Each message has a structure composed of data (primitive applications) according to some structural definition (its schema). Data need to be serialized to be sent over the network as messages using representations such as XML or JSON .

**Connective**: The main objective is to transfer a message from the context of one application to the other regardless of its content. This usually involves enclosing that content in another message with control information and implementing a message protocol (such as SOAP or HTTP) over a communications network according to its own protocol (such as TCP/IP) and possibly resorting to routing gateways if different networks are involved.

**Environmental**: Each application also interacts with the environment (e.g. a cloud or a server) in which it is deployed, anewed or by migration. The environment’s management application programming interface (API) and the infrastructure level that the application requires will most likely have impact on the way applications interact, particularly if they are deployed in (or migrate between) different environments, from different vendors. Interoperability between an application and the environment in which it is deployed usually known as portability.

**Metamodel**: Resource, Service, Transaction, Process, Response, Operation, Request, Channel, Protocol, Link

## A comparison framework for middleware infrastructures

Quotes from [@doi:10.5381/jot.2004.3.5.a2]:

* **Openness**: The middleware infrastructure should enable extending the applications built on top of it in various ways. (e.g., adding, removing, upgrading, composing services, etc.).
* **Scalability**: The middleware infrastructure should facilitate the effective operation of the applications at many different scales.
* **Performance**: The middleware infrastructure should enable the efficient and predictable, if needed, execution of the applications that are built on top of it.
* **Distribution transparency**: is the property that determines if the application is perceived by users, or developers as a whole rather than as a collection of independent constituent elements. The requirement for distribution transparency is quite generic and it is usually refined into a number of more specific transparencies including:
  * **Access transparency**: the infrastructure should enable accessing local and remote application elements in the same way.
  * **Location transparency**: the infrastructure should enable accessing the application elements without knowledge of their physical location.
  * **Concurrency transparency**: the infrastructure should allow concurrent processing on resources, without interference.
  * **Failure transparency**: the infrastructure should enable service provisioning despite the occurrence of failures.
  * **Migration transparency**: the infrastructure should provide means for changing the location of elements of the application without compromising the application’s correct operation, i.e. without affecting the elements that depend on the migrated elements.
  * **Persistence transparency**: the infrastructure should provide means for concealing the deactivation and reactivation of elements from other elements that are using them.
  * **Transaction transparency**: the infrastructure should provide means for coordinating the execution of atomic and isolated transactions.


**Modularity**: The application should consist of a collection of elements, each one providing services, used by the others. Modularity enables the identification of dependencies between the elements that make up the system. Consequently, it allows determining, which elements are affected by the eventual addition, removal or upgrade of services.

**Encapsulation**: For each constituent element, there is a clear separation between the element’s interface and implementation. The interface is a well-defined specification of the provided services, the contract between the element and the entities using it. The implementation is the realization of the provided services. In general, it is safe to change the implementation of an element as long as the element’s interface is preserved. Changing an element’s interface without compromising the overall application integrity requires that the rest of the application does not depend on this particular interface, at the time of the change.

**Inheritance**: An interface specification (resp. implementation) may be derived from another one. The derived interface (resp. implementation) provides at least the services of the base interface (resp. implementation). Inheritance enables the vertical and horizontal composition of services.


**Signal interfaces**: defining asynchronous stimuli that can be handled by instances of engineering objects, providing these interfaces.

**Operation interfaces**: defining operations that can be invoked on instances, providing these interfaces. Invoking an operation causes a request message to be sent by the invoker to the invoked instance. Invoking an operation may further result in a reply sent from the invoked instance to the invoking instance.

**Stream interfaces**: defining operations that can be invoked on instances, providing these interfaces. The result of invoking a stream operation is the continuous conveyance of information from the invoked instance to the invoking instance.


### Comparing FDO and Web as middleware infrastructures 

DOIP [@doi:0.DOIP/DOIPV2.0]

| *Quality* |  FDO / DOIP                | Web / Linked Data          |
|:----------|:--------------------------:|:--------------------------:|
| **Openness** |   |  |
| **Scalability** |   |  |
| **Performance** |   |  |
| **Distribution transparency** |   |  |
| **Access transparency** |   |  |
| **Location transparency** |   |  |
| **Concurrency transparency** |   |  |
| **Failure transparency** |   |  |
| **Migration transparency** |   |  |
| **Persistence transparency** |   |  |
| **Transaction transparency** |   |   |
| **Modularity** |   |  |
| **Encapsulation** |  FDO principles independent of protocols. Indirection by PID, but unclear how to know which protocol to use for which FDO. Some FDO Types may be protocol-bound (e.g. custom operations)  | HTTP 1 semantics apply also in HTTP 2. `http` vs `https` exposes encryption detail. Need URI Design [@{https://www.w3.org/Provider/Style/URI.html}] to avoid application dependence, e.g. use of PURL services.  |
| **Inheritance** | Type system currently undefined for FDO and DOIP, can piggyback of FDO type's schema (e.g. [CORDRA `$ref`]((https://www.cordra.org/documentation/design/schemas.html#schema-references)) use of [JSON Schema references](https://json-schema.org/draft/2020-12/json-schema-core.html#references) [@{https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-00}])  | Media Type with multiple suffixes [@{https://datatracker.ietf.org/doc/draft-ietf-mediaman-suffixes/00/}], multiple profiles (RFC6906) [@doi:10.17487/RFC6906], Semantic type systems (RDFS [@{http://www.w3.org/TR/rdf-schema/}], OWL2 [{@http://www.w3.org/TR/owl2-overview/}], SKOS [@{http://www.w3.org/TR/skos-reference}]), OpenAPI 3 [@{https://spec.openapis.org/oas/v3.1.0.html}] [inheritance and Polymorphism](https://spec.openapis.org/oas/v3.1.0#composition-and-inheritance-polymorphism) |
| **Signal interfaces** | DOIP 2.0 is synchronous, FDO async operations undefined. Could be handled as custom jobs/futures FDOs | HTTP/2 [multiplexed streams](https://datatracker.ietf.org/doc/html/rfc7540#section-5) [@{doi:10.17487/RFC7540}], Web Sockets [@{https://www.w3.org/TR/websockets/}], Linked Data Notifications [@{https://www.w3.org/TR/ldn/}], custom jobs/futures REST resources |
| **Operation interfaces** | CRUD predefined in DOIP, custom operations through `0.DOIP/Op.ListOperations` (_Operation FDO_ currently undefined) | CRUD predefined in HTTP, custom URI templates and REST requests in OpenAPI |
| **Stream interfaces** | Undefined in FDO, DOIP can support multiple byte stream elements with custom FDO type to determine their combination | HTTP 1.1 [@doi:10.17487/RFC7230] [chunked transfer](https://datatracker.ietf.org/doc/html/rfc7230#section-4.1), HLS (RFC8216) {@doi:10.17487/RFC8216}, MPEG-DASH (ISO/IEC 23009-1:2019) {@{https://www.iso.org/standard/79329.html}}  |


Table: Comparing FAIR Digital Object and Web technologies as middleware infrastructures [@doi:10.5381/jot.2004.3.5.a2]
{#tbl:bowling-scores}

## Assessing DOIP against FDO



## Assessing FDO against FAIR



## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
