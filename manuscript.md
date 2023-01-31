---
title: Evaluating FAIR Digital Object as a distributed object system
keywords:
- FDO
- distributed
- digital object
lang: en-GB
date-meta: '2023-01-31'
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
  <meta name="dc.date" content="2023-01-31" />
  <meta name="citation_publication_date" content="2023-01-31" />
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
  <link rel="alternate" type="text/html" href="https://stain.github.io/2022-fdo-paper/v/c0dc59e999a0bc215e5d5e0509a2cf6927bcbba4/" />
  <meta name="manubot_html_url_versioned" content="https://stain.github.io/2022-fdo-paper/v/c0dc59e999a0bc215e5d5e0509a2cf6927bcbba4/" />
  <meta name="manubot_pdf_url_versioned" content="https://stain.github.io/2022-fdo-paper/v/c0dc59e999a0bc215e5d5e0509a2cf6927bcbba4/manuscript.pdf" />
  <meta property="og:type" content="article" />
  <meta property="twitter:card" content="summary_large_image" />
  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />
  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />
  <meta name="theme-color" content="#ad1457" />
  <!-- end Manubot generated metadata -->
bibliography:
- content/manual-references-manubot.yaml
- content/manual-references-ro-crate.bib
- content/manual-references-sciwheel.bib
- content/manual-references-sciwheel.yaml
- content/manual-references.bib
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
manubot-clear-requests-cache: false
...






<small><em>
This manuscript
([permalink](https://stain.github.io/2022-fdo-paper/v/c0dc59e999a0bc215e5d5e0509a2cf6927bcbba4/))
was automatically generated
from [stain/2022-fdo-paper@c0dc59e](https://github.com/stain/2022-fdo-paper/tree/c0dc59e999a0bc215e5d5e0509a2cf6927bcbba4)
on January 31, 2023.
</em></small>

## Authors {.unnumbered}



+ **Stian Soiland-Reyes**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0001-9842-9718](https://orcid.org/0000-0001-9842-9718)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [stain](https://github.com/stain)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [soilandreyes](https://twitter.com/soilandreyes)<br>
  <small>
     Department of Computer Science, The University of Manchester, UK; Informatics Institute, Faculty of Science, University of Amsterdam, NL
     · Funded by [BioExcel-2](https://bioexcel.eu/) (European Commission [H2020-INFRAEDI-2018-1 823830](https://cordis.europa.eu/project/id/823830)); [BY-COVID](https://by-covid.eu/) (European Commission [HORIZON-INFRA-2021-EMERGENCY-01 101046203](https://cordis.europa.eu/project/id/101046203)); [FAIR-IMPACT](http://www.fair-impact.eu/) (European Commission (European Commission [HORIZON-INFRA-2021-EOSC-01 101057344](https://cordis.europa.eu/project/id/101057344))
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
     · Funded by [BioExcel-2](https://bioexcel.eu/) (European Commission [H2020-INFRAEDI-2018-1 823830](https://cordis.europa.eu/project/id/823830)); [EOSC-Life](https://www.eosc-life.eu/) (European Commission [H2020-INFRAEOSC-2018-2 824087](https://cordis.europa.eu/project/id/824087)); [BY-COVID](https://by-covid.eu/) (European Commission [HORIZON-INFRA-2021-EMERGENCY-01 101046203](https://cordis.europa.eu/project/id/101046203)); [BioDT](https://biodt.org/) (European Commission [HORIZON-INFRA-2021-TECH-01-01 101057437](https://cordis.europa.eu/project/id/101057437)); [FAIR-IMPACT](http://www.fair-impact.eu/) (European Commission (European Commission [HORIZON-INFRA-2021-EOSC-01 101057344](https://cordis.europa.eu/project/id/101057344))
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



## Abstract {.page_break_before .unnumbered}

**TODO**: Rewrite from notes below to actual abstract.

FAIR Digital Object is an emerging concept from EOSC. This is important. Worthwile to understand how semantic technologies and semantic web vision relate to this emerging landscape.  Here we do this systematically by comparing the technologies introduced under the banner of FAIR digital Object and Semantic Web.

What is the message of this paper?

1. These are the overlaps
2. This is what FDO is requiring but not commonly deployed
3. DOI indirection is emphasized. It is used in SW, but the idea for stability. Embrace it! 
4. PROV had the idea of using indirection to help us represent provenance of objects  - digital twin
5. Lessons for Semantic Web community. What is missing in FDO and in SW.
6. Contribution is also about thinking about Semantic Web as different architectural levels. Interoperability level, Middleware level. Governance level. Data level. 
7. Go back to the old SW layer cake. Explains why we picked these frameworks.
8. Lessons for SW: Parts of the stack that is less. FDO contributions.

Semantic Web in a way already implements FDO, but other things that SW perhaps should drop in emphasis to better support FDO and FAIR vision. More about indirection, visibility.

Have all the ingredients, but not cooking properly.

Systematic through frameworks. 

Emerging stack - how does it compare to what we've already done? What are the implications for our design and research? What new technology is needed?



## Introduction {#sec:introduction}

The FAIR principles [@doi:10.1038/sdata.2016.18]  encourage sharing of scientific data with machine-readable metadata and the use of interoperable formats, and are being adapted by a wide range of research infrastructures. They have been widely recognised by the research community and policy makers as a goal to strive for. In particular, the European Open Science Cloud ([EOSC](https://www.eosc.eu/)) has promoted adaptation of FAIR data sharing of data resources across electronic research infrastructures [@doi:10.3233/ISU-170824]. The EOSC Interoperability Framework [@doi:10.2777/620649] puts particular emphasis on how interoperability can be achieved technically, semantically, organisationally, and legally -- laying out a vision of how data, publication, software and services can work together to form an ecosystem of rich digital objects.

Specifically, the EOSC Interoperability framework highlights the emerging FAIR Digital Object [@doi:10.1007/978-3-030-23584-0_1] (FDO) concept as a possible foundation for building a semantically interoperable ecosystem to fully realise the FAIR principles beyond individual repositories and infrastructures. The FDO approach has great potential, as it proposes strong requirements for identifiers, types, access and formalises interactive operations on objects.

In other discourse, Linked Data [@doi:10.4018/jswis.2009081901] has been seen as an established set of principles based on Semantic Web technologies that can achieve the vision of the FAIR principles [@doi:10.1007/978-3-319-98192-5_60; @boninodasilvasantos_2016]. Yet regular researchers and developers of emerging platforms for computation and data management are reluctant to adapt such a FAIR Linked Data approach fully [@doi:10.3233/SW-190372], opting instead for custom in-house models and JSON-derived formats from RESTful Web services [@doi:10.1007/978-3-031-01917-3_7; @doi:10.1109/TSC.2018.2847344]. While such focus on simplicity gives rapid development and highly specialised services, it raises wider concerns on interoperability [@doi:10.55630/dipp.2014.4.11; @doi:10.48550/arXiv.2209.09022].

One challenge that may, perhaps counter-intuitively, steer developers towards a not-invented-here mentality [@doi:10.18151/7217489; @doi:10.1007/978-3-319-19593-3_18] when exposing their data on the Web is the heterogeneity and apparent complexity of Semantic Web approaches themselves [@doi:10.1007/978-3-031-01917-3_3].

These approaches, thus, form two of the major avenues for allowing developers and the wider research community to achieve the goal of FAIR data. Given their importance, in this article, we aim to examine the relationships between FAIR and FAIR Digital Objects, contrasted with Linked Data and the Web in general. 

Concretely, the contribution of this paper is a systematic comparison between FDO and Linked Data using 5 different conceptual frameworks that capture different perspectives on interoperability and readiness for implementation. 

## Background and related work {#sec:background}

In the following, we discuss the related work with respect to FAIR Digital Objects and Linked Data. For the later, we do so by looking through the lens of its development overtime. 



### FAIR Digital Object {#sec:fdo}

::: {.breakout}

#### Next steps for FDO {#sec:next-step-fdo}

The FAIR Digital Object Forum [@{https://fairdo.org/}] working groups are preparing more detailed [requirement documents](https://docs.google.com/spreadsheets/d/1O1PTLmVWqjQgvJsIcPgaZJe9BntHZt8_QndEG0eRwUY/edit) setting out the path for realising FDOs, named _FDO Recommendations_. As of 2023-01-05, these documents are in draft stages in Google Docs for internal review and have not yet formally been made public. As these drafts clarify the future aims and focus of FAIR Digital Objects, we provide their brief summaries below:

**FAIR Digital Object Overview and Specifications** [@PR-Overview-1.2-20221119] is a comprehensive overview of FAIR Digital Object specifications listed below. It serves as a primer that introduces FDO concepts and the remaining documents.

The **FDO Forum Document Standards** [@WD-DocProcessStd-1.1-20220129] documents the recommendation process within the forum, starting at _Working Draft_ (WD) status within the closed working group and later within the open forum, then _Proposed Recommendation_ (PR) published for public review, finalised as _FDO Forum Recommendation_ (REC) following any revisions. In addition, the forum may choose to _endorse_ existing third-party notes and specifications.

The **FDO Requirement Specifications** [@PR-RequirementSpec-2.0-20220826] is an update of [@bonino_2019] as the foundational definition of FDO. This sets the criteria for classifying an digital entity as a FAIR Digital Object, allowing for multiple implementations. The requirements shown in Table @tbl:fdo-checks are largely equivalent, but in this specification clarified with references to other FDO documents.

The **Machine actionability** [@PR-MachineActionDef-2.0-20220611] sets out to define what is meant by _machine actionability_ for FDOs. _Machine readable_ is defined as elements of bit-sequences defined by structural specification, _machine interpretable_ elements that can be identified and related with  semantic artefacts, while _machine actionable_ are elements with a type with operations in a symbolic grammar. The document largely describes requirements for resolving an FDO to metadata, and how types should be related to possible operations.

**Configuration Types** [@PR-ConfigurationTypes-2.0-20220608] classifies different granularities for organising FDOs in terms of PIDs, PID Records, Metadata and bit sequences, e.g. as a single FDO or several daisy-chained FDOs. Different patterns used by current DOIP deployments are considered, as well as FAIR Signposting [@{https://signposting.org/FAIR/}]

**PID Profiles & Attributes** [@PR-PIDProfileAttributes-2.0-20220608] specifies that PIDs must be formally associated with a _PID Profile_, a separate FDO that defines attributes required and recommended by FDOs following said profile. This forms the _kernel attributes_, building on recommendations from RDA's _PID Information Types_ working group [@doi:10.15497/rda00031]. This document makes a clear distinction between a minimal set of attributes needed for PID resolution and FDO navigation, which  needs to be part of the _PID Record_, compared with a richer set of more specific attributes as part of the _metadata_ for an FDO, possibly represented as a separate FDO. 

**Kernel Attributes & Metadata** [@WD-KernelAttributes-1.0-20220828] elaborates on categories of FDO Mandatory, FDO Optional and Community Attributes, recommending kernel attributes like `dateCreated`, `ScientificDomain`, `PersistencePolicy`, `digitalObjectMutability`, etc. This document expands on RDA Recommendation on PID Kernel Information [@doi:10.15497/rda00031]. It is worth noting that both documents are relatively abstract and do not establish PIDs or namespaces for the kernel attributes.

**Granularity, Versioning, Mutability** [@PR-Granularity-2.1-20220826] considers how granularity decisions for forming FDOs must be agreed by different communities depending on their pragmatic usage requirements. The affect on versioning, mutability and changes to PIDs are considered, based on use cases and existing PID practices.

**DOIP Endorsement Request** [@PED-DOIPEndorsement-1.0-20220608] is an endorsement of the DOIP v2.0 [@handle:0.DOIP/DOIPV2.0] specification as a potential FDO implementation, as it has been applied by several institutions [@doi:10.5281/zenodo.5872645]. The document proposes that DOIP shall be assessed for completeness against FDO -- in this initial draft this is justified as _"we can state that DOIP is compliant with the FDO specification documents in process"_ (the documents listed above).

**Upload of FDO** [@PEN-FDO-Upload-1.0-20220608] illustrates the operations for uploading an FDO to a repository, what checks it should do (for instance conformance with the PID Profile, if PIDs resolve). ResourceSync [@{http://www.openarchives.org/rs/toc}] is suggested as one type of service to list FDOs. This document highlights potential practices by repositories and their clients, but adds no particular requirements (e.g. how should failed upload checks be reported?).

**Typing FAIR Digital Objects** [@PR-TypingFDOs-2.0-20220608] defines what _type_ means for FDOs, primarily to enable machine actionability and to define an FDO's purpose. This document lays out requirements for how _FDO Types_ should themselves be specified as FDOs, and how an _FDO Type Framework_ allows organising and locating types. Operations applicable to an FDO is not predefined for a type, however operations naturally will require certain FDO types to work. How to define such FDO operations is not specified.

**Implementation of Attributes, Types, Profiles and Registries** [@WD-ImplAttributesTypesProfiles-0.2-20221127] details how to establish FDO registries for types and FDO profiles, with their association with PID systems. This document suggest policies and governance structures, together with guidelines for implementations, but without mandating any explicit technology choices. Differences in use of attributes are examplified using FDO PIDs for scientific instruments, and the proto-FDO approach of [DARIAH-DE](https://de.dariah.eu/) [@doi:10.3897/rio.8.e96014].

It is worth pointing out at that, except for the DOIP endorsement, all of these documents are abstract, in the sense that they permit any technical implementation of FDO, if used according to the recommendations.

:::



The concept of **FAIR Digital Objects** [@doi:10.1007/978-3-030-23584-0_1] has been introduced as way to expose research data as active objects that conform to the FAIR principles [@doi:10.1038/sdata.2016.18]. This builds on the _Digital Object_ (DO) concept [@doi:10.1007/s00799-005-0128-x], first introduced in 1995 [@kahn_1995] as a system of _repositories_ containing _digital objects_ identified by _handles_ and described by _metadata_ which may have references to other handles. DO was the inspiration for the ITU X.1255 framework [@{https://www.itu.int/rec/T-REC-X.1255-201309-I}] which introduced an abstract _Digital Entity Interface Protocol_ for managing such objects programmatically, first realised by the Digital Object Interface Protocol (DOIP) v1 [@{https://www.dona.net/doipv1doc}].

In brief, the structure of a FAIR Digital Object (FDO) is to, given a _persistent identifier_ (PID) such as a DOI, resolve to a _PID Record_ that gives the object a _type_ along with a mechanism to retrieve its _bit sequences_, _metadata_ and references to further programmatic _operations_. The type of an FDO (itself an FDO) defines attributes to semantically describe and relate such FDOs to other concepts (typically other FDOs referenced by PIDs). The premise of systematically building an ecosystem of such digital objects is to give researchers a way to organise complex digital entities, associated with identifiers,  metadata, and supporting automated processing [@doi:10.23728/b2share.b605d85809ca45679b110719b6c6cb11].

Recently, FDOs have been recognised by the European Open Science Cloud ([EOSC](https://eosc.eu/)) as a suggested part of its Interoperability Framework [@doi:10.2777/620649], in particular for deploying active and interoperable FAIR resources that are _machine actionable_. Development of the FDO concept continued within Research Data Alliance ([RDA](https://www.rd-alliance.org/)) groups and EOSC projects like [GO-FAIR](https://www.go-fair.org/), concluding with a set of guidelines for implementing FDO [@bonino_2019]. The [FAIR Digital Objects Forum](https://fairdo.org/) has since taken over the maturing of FDO through focused working groups which have currently drafted several more detailed specification documents (see section @sec:next-step-fdo). 



#### FDO approaches

FDO is an evolving concept. A set of FDO Demonstrators [@doi:10.5281/zenodo.5872645] highlight how current adapters are approaching implementations of FDO from different angles:

 * Building on the Digital Object concept, using the simplified DOIP v2 specification [@handle:0.DOIP/DOIPV2.0], which detail how to exchange JSON objects through a text-based protocol[^3] (usually TCP/IP over TLS). The main DOIP operations are retrieving, creating and updating digital objects. These are mostly realised using the reference implementation [Cordra](https://cordra.org/). FDO types are registered in the local Cordra instance, where they are specified using JSON Schema [@{https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-00}] and PIDs are assigned using the Handle system. Several type registries have been established.
 * Following the traditional Linked Data approach, but using the DOIP protocol, e.g. using JSON-LD and schema.org within DOIP (NIST for material science).
 * Approaching the FDO principles from existing Linked Data practices on the Web (e.g. WorkflowHub use of RO-Crate and schema.org).

From this it becomes apparent that there is a potentially large overlap between the goals and approaches of FAIR Digital Objects and Linked Data, which we'll cover in the section @sec:ld.
 
[^3]: For a brief introduction to DOIP 2.0 [@handle:0.DOIP/DOIPV2.0], see [@{https://www.cordra.org/documentation/api/doip.html}].




### From the Semantic Web to Linked Data {#sec:ld}

In order to describe _Linked Data_ as it is used today, we'll start with an (opinionated) description of the evolution of its foundation, the _Semantic Web_.

#### A brief history of the Semantic Web {#sec:semweb}

The **Semantic Web** was developed as a vision by Tim Berners-Lee [@isbn:978-0-06-251587-2], at a time the Web had been widely established for information exchange, as a global set of hypermedia documents that eare cross-related using universal links in the form of URLs. The foundations of the Web (e.g. URLs, HTTP, SSL/TLS, HTML, CSS, ECMAScript/JavaScript, media types) were standardised by [W3C](https://www.w3.org/standards/), [Ecma](https://www.ecma-international.org/), [IETF](https://www.ietf.org/standards/) and later [WHATWG](https://whatwg.org/). The goal of Semantic Web was to further develop the machine-readable aspects of the Web, in particular adding _meaning_ (or semantics) to not just the link relations, but also to the _resources_ that the URLs identified, and for machines thus being able to meaningfully navigate across such resources, e.g. to answer a particular query.

Through W3C, the Semantic Web was realised with the Resource Description Framework (RDF) [@{http://www.w3.org/TR/rdf11-primer/}] that used _triples_ of subject-predicate-object statements, with its initial serialisation format [@{https://www.w3.org/TR/1999/REC-rdf-syntax-19990222}] being RDF/XML (XML was at the time seen as a natural data-focused evolution from the document-centric SGML and HTML). 

While triple-based knowledge representations were not new [@doi:10.21954/ou.ro.0000f821], the main innovation of RDF was the use of global identifiers in the form of URIs[^4] as the primary identifier of the _subject_ (what the statement is about), _predicate_ (relation/attribute of the subject) and _object_ (what is pointed to). By using URIs not just for documents[^5], the Semantic Web builds a self-described system of types and properties, the meaning of a relation can be resolved by following its hyperlink to the definition within a _vocabulary_. 

[^4]: URIs [@doi:10.17487/RFC3986] are generalised forms of URLs that include locator-less identifiers 
  such as ISBN book numbers (URNs). The distinction between locator-full and locator-less identifiers have weakened in recent years [@{http://info-uri.info/}], for instance DOI identifiers now are commonly expressed with the prefix `https://doi.org/` rather than as URNs with `info:doi:` given that the URL/URN gap has been bridged by HTTP resolvers and the use of Persistent Identifiers (PIDs) [@doi:10.1093/nar/gkr1097]. RDF 1.1 formats use Unicode to support IRIs [@doi:10.17487/RFC3987], which extends URIs to include international characters and domain names.

[^5]: URIs can also identify _non-information resources_ for any kind of physical object (e.g. people), such identifiers can resolve with `303 See Other` redirections to a corresponding _information resources_ [@doi:10.22028/D291-25086].

The early days of the Semantic Web saw fairly lightweight approaches with the establishment of vocabularies such as FOAF (to describe people and their affiliations) and Dublin Core (for bibliographic data). Vocabularies themselves were formalised using RDFS or simply as human-readable HTML web pages defining each term.  The main approach of this _Web of Data_ was that a URI identified a _resource_ (e.g. an author) had a HTML _representation_ for human readers, along with a RDF representation for machine-readable data of the same resource. By using _content negotiation_ in HTTP, the same identifier could be used in both views, avoiding `index.html` vs `index.rdf` exposure in the URLs. The concept of _namespaces_ gave a way to give a group of RDF resources with the same URI base from a Semantic Web-aware service a common _prefix_, avoiding repeated long URLs.

The mid-2000s saw a large academic interest and growth of the Semantic Web, with the development of more formal representation system for ontologies, such as OWL, allowing complex class hierarchies and logic inference rules following _open world_ paradigm (e.g. a _ex:Parent_ is equivalent to a subclass of _foaf:Person_ which must _ex:hasChild_ at least one _foaf:Person_, then if we know _:Alice a ex:Parent_ we can infer _:Alice ex:hasChild [a foaf:Person]_ even if we don't know who that child is). More human-readable syntaxes of RDF such as Turtle (shown in this paragraph) evolved at this time, and conferences such as [ISWC](https://iswc2022.semanticweb.org/) [@doi:10.1007/3-540-48005-6] gained traction, with a large interest in knowledge representation and logic systems based on Semantic Web technologies evolving at the same time.

Established Semantic Web services and standards include SPARQL [@{http://www.w3.org/TR/sparql11-overview/}] (pattern-based triple queries), [named graphs](https://www.w3.org/TR/rdf11-concepts/#section-dataset) (triples expanded to _quads_ to indicate statement source or represent conflicting views), triple/quad stores (graph databases such as OpenLink Virtuoso, GraphDB, 4Store), mature RDF libraries (including Redland RDF, Apache Jena, Eclipse RDF4J, RDFLib, RDF.rb, rdflib.js), and numerous graph visualisation (many of which struggle with usability for more than 20 nodes). 

The creation of RDF-based knowledge graphs grew particularly in fields like bioinformatics, e.g. for describing genomes and proteins [@doi:10.1016/j.jbi.2008.01.008; @doi:10.1016/j.drudis.2012.05.016]. In theory, the use of RDF by the life sciences would enable interoperability between the many data repositories and support combined views of the many aspects of bio-entities -- however in practice most institutions ended up making their own ontologies and identifiers, for what to the untrained eye would mean roughly the same.  One can argue that the toll of adding the semantic logic system of rich ontologies meant that small, but fundamental, differences in opinion (e.g. should a _gene identifier_ signify which protein a DNA sequence would make, or just the particular DNA sequence letters, or those letters as they appear in a particular position on a human chromosome?) lead to large differences in representational granularity, and thus needed different identifiers.

Facing these challenges, thanks to the use of universal identifiers in the form of URIs, _mappings_ could retrospectively be developed not just between resources, but also across vocabularies. Such mappings can be expressed themselves using lightweight and flexible RDF vocabularies such as SKOS [@{http://www.w3.org/TR/skos-primer}] (e.g. `dct:title skos:closeMatch schema:name` to indicate near equivalence of two properties). Automated ontology mappings have identified large potential overlaps (e.g. 372 definitions of `Person`) [@doi:10.1007/978-3-642-21034-1_20] .

The move towards _open science_ data sharing practices from the late 2000s encouraged knowledge providers to distribute collections of RDF descriptions as downloadable _datasets_ [^7], so that their clients can avoid thousands of HTTP requests for individual resources. This enabled local processing, mapping and data integration across datasets (e.g. Open PHACTS [@doi:10.1016/j.websem.2014.03.003]), rather than relying on the providers' RDF and SPARQL endpoints (which could become overloaded when handling many concurrent, complex queries). 

[^7]: _Datasets_ that distribute RDF graphs should not be confused with [RDF Datasets](https://www.w3.org/TR/rdf11-concepts/#section-dataset) used for partitioning _named graphs_.

<!-- UNFOUNDED - can't find good citations to evidence this anecdotal claim.

Along with experiments on logic systems in the Semantic Web academia, an unfortunate side-effect appeared. RDF datasets would use URIs which no longer (or never) resolved to a Semantic Web representation of the described resources. Inconsistencies would emerge as the production of RDF largely focused on building graph representations of internal databases in order to use the Semantic Web tooling, rather than as a way to expose knowledge on the Web. Ironically, `http` based URLs then becomes location-less identifiers, mainly signifying a localised node within a graph, rather than a resolvable resource.
-->

With these trends, an emerging problem was that adopters of the Semantic Web primarily utillised it as a set of graph technologies, with little consideration to existing Web resources. This meant that links stayed mainly within a single information system, with little URI reuse even with large term overlaps [@doi:10.3233/SW-160238]. Just like _link rot_ affect regular Web pages and their citations from scholarly communication [@doi:10.1371/journal.pone.0115253], for a majority of described RDF resources in the [Linked Open Data](https://lod-cloud.net/) (LOD) Cloud's gathering of more than thousand datasets, unfortunately they do not actually link to (still) downloadable (_dereferenceable_) Linked Data [@doi:10.3233/SW-190380, {handle:20.500.11811/7183}].   Another challenge facing potential adopters is the plethora of choices, not just to navigate, understand and select to reuse the many possible vocabularies and ontologies [@doi:10.3233/SSW200033] <!--https://arxiv.org/abs/2011.12599 -->, but also technological choices on RDF serialisation (at least [7 formats](https://www.w3.org/TR/rdf11-primer/#section-graph-syntax)), type system (RDFS [@{http://www.w3.org/TR/rdf-schema/}], OWL [@{http://www.w3.org/TR/owl2-overview/}], OBO [@doi:10.1186/2041-1480-2-S1-S3], SKOS [@{http://www.w3.org/TR/skos-primer}]), hash vs slash, HTTP status codes and PID redirection strategies [@doi:10.22028/D291-25086].




#### Linked Data: Rebuilding the Web of Data {#sec:ld-web}

The **Linked Data** concept [@doi:10.4018/jswis.2009081901] <!--preprint http://eprints.soton.ac.uk/id/eprint/271285 --> was kickstarted as a set of best practices [@{https://www.w3.org/DesignIssues/LinkedData.html}] to bring the Web aspect back into focus. Crucially to Linked Data is the _reuse of existing URIs_, rather than making new identifiers. This means a loosening of the semantic restrictions previously applied, and an emphasis on building navigable data resources, rather than elaborate graph representations.

Vocabularies like [schema.org](https://schema.org/) evolved not long after, intended for lightweight semantic markup of existing Web pages, primarily to improve search engines' understanding of types and embedded data. In addition to several such embedded _microformats_ (Open Graph [@{https://ogp.me/}], RDFa [@{http://www.w3.org/TR/rdfa-primer/}], Microdata [@{https://html.spec.whatwg.org/multipage/microdata.html}]) we find JSON-LD [@{https://www.w3.org/TR/json-ld/}] as a Web-focused RDF serialisation that aims for improved programmatic generation and consumption, including from Web applications. JSON-LD is as of 2022-05-13 used[^8] by 42.7% of the top 10 million websites [@{https://w3techs.com/technologies/details/da-jsonld}].

[^8]: Presumably this large uptake of JSON-LD is mainly for the purpose of Search Engine Optimisation (SEO), with typically small amounts of metadata which may not constitute Linked Data as introduced above, however this deployment nevertheless constitute machine-actionable structured data.

Recently there has been a renewed emphasis to improve the _Developer Experience_ [@{https://ruben.verborgh.org/blog/2018/12/28/designing-a-linked-data-developer-experience/}] for consumption of Linked Data, for instance RDF Shapes (expressed in SHACL [@{https://www.w3.org/TR/shacl/}] or ShEx [@{http://shex.io/shex-primer/}]) can be used to validate RDF Data [@doi:10.1007/978-3-030-21348-0_39; @doi:10.2200/S00786ED1V01Y201707WBE016] <!-- https://book.validatingrdf.com/ --> before consuming it programmatically, or reshaping data to fit other models. While a varied set of tools for Linked Data consumptions have been identified, most of them still require developers to gain significant knowledge of the underlying technologies, which hampers adaption by non-LD experts [@doi:10.3233/SW-180316], <!--http://www.semantic-web-journal.net/system/files/swj1849.pdf --> which then tend to prefer non-semantic two-dimensional formats such as CSV files.  

A valid concern is that the Semantic Web research community has still not fully embraced the Web, and that the "final 20%" engineering effort is frequently overlooked in favour of chasing new trends such as Big Data and AI, rather than making powerful Linked Data technologies available to the wider groups of Web developers [@doi:10.3233/SW-190372]. One bridging gap here by the Linked Data movement has been "linked data by stealth" approaches such as structured data entry spreadsheets powered by ontologies [@doi:10.1093/bioinformatics/btr312], the use of Linked Data as part of REST Web APIs [@doi:10.1145/1967428.1967435] <!-- http://eprints.soton.ac.uk/id/eprint/272098 -->, and as shown by the big uptake by publishers to annotate the Web using schema.org [@doi:10.1109/MIC.2015.81, @doi:10.1145/2890489], with vocabulary use patterns documented by copy-pastable JSON-LD examples, rather than by formalised ontologies or developer requirements to understand the full Semantic Web stack.



## Comparing FDO and existing approaches {#sec:comparing}

To better understand the relationship between the FDO framework and other exisiting approaches, we use the following for analysis:

1. An Interoperability Framework and Distributed Platform for Fast Data Applications [@doi:10.1007/978-3-319-31861-5_1], which proposes quality measurements for comparing how frameworks support interoperability, particularly from a service architectural view
2. The FAIR Digital Object guidelines [@bonino_2019], validated against its implementations for completeness. 
3. A Comparison Framework for Middleware Infrastructures [@doi:10.5381/jot.2004.3.5.a2], which suggest dimensions like openness, performance and transparency, mainly focused on remote computational methods
4. Cross-checks against RDA's FAIR Data Maturity Model [@doi:10.5334/dsj-2020-041] to find how the FAIR principles are achieved in FDO, in particular considering access, sharing and openness
5. EOSC Interoperability Framework [@doi:10.2777/620649] which gives recommendations for technical, semantic, organisational and legal interoperability, particularly from a metadata perspective

The reason for this wide-ranged comparison is to exercise the different dimensions that together form FAIR Digital Objects: Data, Metadata, Service, Access, Operations, Computation. 
We have left out further comparisons on type systems, persistent identifiers and social aspects as principles and practices within these dimensions are still taking form within the FDO community (see section @sec:next-step-fdo).

Some of these frameworks invite a comparison on a conceptual level, while others relate better to implementations and current practices. For these we consider FAIR Digital Objects and the Web conceptually, and for implementations we contrast between the main FDO realisation using the DOIPv2 protocol [@handle:0.DOIP/DOIPV2.0] against Linked Data in general.




### Considering FDO/Web as interoperability framework for Fast Data {#sec:interoperability-compare}

The Interoperability Framework for Fast Data Applications [@doi:10.1007/978-3-319-31861-5_1] categorises interoperability between applications along 6 strands, covering different architectural levels: from _symbiotic_ (agreement to cooperate) and _pragmatic_ (ability to choreograph processes), through _semantic_ (common understanding) and _syntactic_ (common message formats), to low-level _connective_ (transport-level) and _environmental_ (deployment practices).

We have chosen to investigate using this framework as it covers the higher levels of the OSI Model [@isbn:9780672226977] better with regards to automated machine-to-machine interaction (and thus interoperability), which is a crucial aspect of the FAIR principles. In Table @tbl:fdo-web-interoperability-framework we use the interoperability framework to compare the current FAIR Digital Object approach against the Web and its Linked Data practices.


| *Quality* |  FDO w/ DOIP               | Web w/ Linked Data         |
|:----------|:--------------------------:|:--------------------------:|
| **Symbiotic**: _to what extent multiple applications can agree to interact/align/collaborate/cooperate_      |  The purpose of FDO is to enable federated machine actionable digital objects for scholarly purposes, in practice this also requires agreement of or compatibility between FDO types. FDO encourages research communities to develop common type registries to be shared across instances. In current DOIP practice, each service have their own types, attributes and operations.  The wider symbiosis is consistent use of PIDs. |  The Web is loosely coupled and encourages collaboration and linking by URL. In practice, REST APIs [@fielding_2000] end up being mandated centrally by dominant (often commercial) providers [@10.1145/3106237.3121282], which clients are required to use as-is with special code per service. Use of Linked Data enables common tooling and semantic mapping across differences.  |
| **Pragmatic**: _using interaction contracts so processes can be choreographed in workflows_      |  FDO types and operations enable detailed choreography (see CWFP). `0.TYPE/DOIPOperation` has lightweight definition of operation, `0.DOIP/Request` or `0.DOIP/Response` may give FDO Type or any other kind of "specifics" (incl. human readable docs). Semantics/purpose of operations not formalised (similar operations can be grouped with `0.DOIP/OperationReference`).   |  "Follow your nose" crawler navigation, which may lead to frequent dead ends. Operational composition, typically within a single API provider, documented by OpenAPI 3 [@{https://spec.openapis.org/oas/v3.1.0.html}], schema.org Actions [@{https://schema.org/docs/actions.html}], WSDL/SOAP [@{http://www.w3.org/TR/wsdl20-primer}], but frequently just as human-readable developer documentation/examples. |
| **Semantic**: _ensuring consistent understanding of messages, interoperability of rules, knowledge and ontologies_       |  FDO semantic enable navigation and typing. Every FDO has a type. Types maintained in FDO Type registries, which may add additional semantics, e.g. the ePIC [PID-InfoType for Model](https://hdl.handle.net/21.11104/c1a0ec5ad347427f25d6). No single type semantic, Type FDOs can link to existing vocabularies & ontologies. JSON-LD used within some FDO objects (e.g. DISSCO Digital Specimen, NIST Material Science schema) [@doi:10.5281/zenodo.5872645] |  Lightweight HTTP semantics for authenticity/navigation.  Semantic Type not commonly expressed on PID/header level, may be declared within Linked Data metadata. Semantic of type implied by Linked Data formats (e.g. OWL2, RDFS), although choice of type system may not be explicit.   |
| **Syntactic**: _serialising messages for digital exchange, structure representation_      |  DOIP serialise FDOs as JSON, metadata commonly use JSON, typed with JSON Schema. Multiple byte stream attachments of any media type.  | Textual HTTP headers (including any signposting), single byte stream of any media type, e.g. Linked Data formats (JSON-LD, Turtle, RDF/XML) or embedded in document (HTML with RDFa, JSON-LD or Microdata). XML was previously the main syntax used by APIs, JSON is now dominant. |
| **Connective**: _transferring messages to another application, e.g. wrapping in other protocols_     |  DOIP [@handle:0.DOIP/DOIPV2.0] is transport-independent, commonly TLS TCP/IP port 9000), [DOIP over HTTP](https://www.cordra.org/documentation/api/doip-api-for-http-clients.html) | HTTP/1.1 (TCP/IP port 80), HTTP/1.1+TLS (TCP/IP 443), HTTP/2 (as HTTP/1* but binary), HTTP/3 (like HTTP/2+TLS but UDP)  |
| **Environmental**: _how applications are deployed and affected by its environment, portability_  |  Main DOIP implementation is [Cordra](https://www.cordra.org/), which can be single-instance or [distributed](https://www.cordra.org/documentation/configuration/distributed-deployment.html). Cordra [storage backends](https://www.cordra.org/documentation/configuration/storage-backends.html) include file system, S3, MongoDB (itself scalable). Unique DOIP protocol can be hard to add to existing Web application frameworks, although proxy services have been developed (e.g. B2SHARE adapter). |  HTTP services widely deployed in a myriad of ways, ranging from single instance servers, horizontally & vertically scaled application servers, to (for static content) multi-cloud Content-Delivery Networks (CDN).  Current scalable cloud technologies for Web hosting may not support HTTP features previously seen as important for Semantic Web, e.g. content negotiation and semantic HTTP status codes.  |

Table: Considering FDO and Web according to the quality levels of the Interoperability Framework for Fast Data [@doi:10.1007/978-3-319-31861-5_1].
{#tbl:fdo-web-interoperability-framework}

Based on the analysis shown in table @tbl:fdo-web-interoperability-framework, we draw the following conclusions:

The Web has already showed us how one can compose workflows of hetereogeneous Web Services [@10.1093/nar/gkt328]. However, this is mostly done via developer or human interaction [@10.12688/f1000research.54159.1]. Similiarly, FDO does not enable automatic composition because operation semantics are not well defined. There is a question as to whether the plethora of documentation and broad developer usage that is available for Web APIs can be developed for FDO.

A difference between Web technologies and FDO is the stringency of the requirements for both syntax and semantics. Whereas the Web allows many different syntactic formats (e.g. from HTML to XML, PDFs), FDO realised with DOIP requires JSON. On the semantic front, FDO requires that every object have a well-defined type and structured form. This is clearly not the case on the Web.

In terms of connectivity and the deployment of applications, the Web has a plethora of software, services, and protocols that are widely deployed. These have shown interoperability. The Web standards bodies (e.g. IETF and W3C) follow the OpenStand principles [@{https://open-stand.org/about-us/principles/}] to embrace openness, transparency, and broad consensus. In contrast, FDO has a small number of implementations and corresponding protocols, although with a growing community, as evidenced at the first FDO conference [@doi:10.3897/rio.coll.190]. This is not to say that it is not worth developing further Handle+DOIP implementations in the future, but we note that the current FDO functionality can easily be implemented using Web technologies, even as DOIP-over-HTTP [@{https://www.cordra.org/documentation/api/doip-api-for-http-clients.html}].

It's also a question as to whether a highly constrained protocol revolving around persistent identifiers is in fact necessary. For example, DOIs are mostly resolved on the web [@{https://www.doi.org/factsheets/DOIProxy.html}] using HTTP redirects with the common `https://doi.org/` prefix, hiding their Handle nature as an implementation detail [@{https://www.doi.org/doi_handbook/3_Resolution.html}].

#### Mapping of Metamodel concepts

The Interoperability Framework for Fast Data also provides a brief _metamodel_ which we use in Table @tbl:metamodel-concepts to map and examplify corresponding concepts in FDO's DOIP realization and the Web using HTTP semantics [@doi:10.17487/RFC9110].

| Metamodel concept | FDO/DOIP concept | Web/HTTP concept           |
|:-----------------:|:----------------:|:--------------------------:|
|  Resource         | FDO/DO           |  Resource                  |
|  Service          | DOIP service     |  Server/endpoint           |
|  Transaction      | (not supported)  |  Conditional requests, `409 Conflict` |
|  Process          | Extended operations  |  (primarily stateless), `100 Continue`, `202 Accepted` |
|  Operation        | DOIP Operation   |  Method, query parameters  |
|  Request          | DOIP Request     |  Request                   |
|  Response         | DOIP Response    |  Response                  |
|  Message          | Segment, `requestId` |  Message, Representation   |
|  Channel          | DOIP Transport protocol (e.g. TCP/IP, TLS). JSWS signatures. |  TCP/IP, TLS, UDP       |
|  Protocol         | DOIP 2.0, ++     |  HTTP/1.1, HTTP/2, HTTP/3  |
|  Link             | PID/Handle       |  URL                       |

Table: Mapping the Metamodel concepts from the Interoperability Framework for Fast Data [@doi:10.1007/978-3-319-31861-5_1] to equivalent concepts for FDO and Web.
{#tbl:metamodel-concepts}

From this mapping we can identify the conceptual similarities between DOIP and HTTP, often with common terminology. Notable are that neither DOIP or HTTP have strong support for transactions (explored further in section @sec:middleware), as well that HTTP has poor direct support for processes, as the Web is primarily stateless by design. 

### Assessing FDO implementations {#sec:doip-fdo-compare}

The FAIR Digital Object guidelines [@bonino_2019] sets out recommendations for FDO implementations.  In Table @tbl:fdo-checks we evaluate the two current implementations, using DOIPv2 [@handle:0.DOIP/DOIPV2.0] and using Linked Data Platform [@ldp1.0], as proposed by [@{https://fairdigitalobjectframework.org/}]. 

| **FDO Guideline**                                    | DOIP 2.0            | FDO suggestions     | Linked Data Platform | LDP suggestion       |
|:------------------------------------------------:|:-------------------:|:-------------------:|:--------------------:|:--------------------:|
| G1: _invest for many decades_                    | Handle system stable for 20 years, DOIP 2.0 since 2017. | Ensure FDO types will not be protocol-bound as DOIP might be updated/replaced | HTTP stable for 30 years, Semantic Web for 20 years. `http://` URIs replaced by `https://`. | Keep flexibility of RDF serialisation formats which may change more frequently | 
| G2: _trustworthiness_                            | DOI/Handle trusted by all major academic publishers and data repositories. DOIP relatively unknown, in effect only one implementation. |  Further promote DOIP and justify its benefits. Build tutorials and OSI open source implementations. Standardise DOIP-over-HTTP alternative.  |  JSON-LD used by half of all websites [@{https://w3techs.com/technologies/details/da-jsonld}], however previous bad experiences with Semantic Web may deter adapters  |  Ensure simplicity for end developers, rather than semantic overengineering. Example-driven documentation.  |
| G3: _follows FAIR principles_                    | See Table @tbl:fair-data-maturity-model |  Ensure all FAIR principles are covered, build complete examples.   |  Touched briefly, see Table @tbl:fair-data-maturity-model |  Add explicit expression to show each FAIR pcinciple fulfilled.  | 
| G4: _machine actionability_                      | CRUD and extension operations dynamically listed (see Table @tbl:fdo-web-middleware) |  Specify which operations should work for a given type, to reduce need for dynamic lookup. Specify input/output expectations formally (e.g. JSON Schema).  |  HTTP CRUD operations, Open API (see Table @tbl:fdo-web-middleware) |  Document operations so client can make subsequent HTTP calls.  |
| G5: _abstraction principle_                      | Handle PIDs as abstraction base. DOIP operations can use any transport protocol.  | Document transport protocols as FDOs, recommend which transport to use. |  URI as abstraction base. Does not specify PID requirements.  | Give stronger deployment recommendations. |   
| G6: _stable binding between entities_            | Machine-navigation through PIDs and operations specified per type. Unclear when metadata field is a PID or plain text. | Make datatype of fields explicit to support navigation. | Machine-navigation through URIs via properties and types. Unclear when URI should be followed or is just identifier, but always distinct from plain text. |    |
| G7: _encapsulation_                              | Operations discovered at runtime (`0.DOIP/Op.ListOperations`).  |  Allow method discovery by type FDOs in advance (see PR-TypingFDOs-2.0-20220608). | HTTP methods discovered at runtime (`OPTIONS`), indempotent methods attempted directly. Unsupported methods reported using LDP constraints to human-readable text. |  Declare supported methods in advance, e.g. OpenAPI [@{https://spec.openapis.org/oas/v3.1.0.html}]  | 
| G8: _technology independence_                    | In theory independent, in reality depends on single implementations of Handle system and DOIP  | Encourage open source DOIP testbeds and lighter reference implementations  |  Multiple HTTP implementations, multiple LDP implementations. No FDOF implementations.  |  Develop demonstrator of FDOF usage based on existing LDP server.  |
| G9: _standard compliance_                        | Handle [@doi:10.17487/RFC3650], DOIP [@handle:0.DOIP/DOIPV2.0]. FDO requirements not standardised yet.   | Formalise standard process of FDO requirements [@WD-DocProcessStd-1.1-20220129] |  HTTP, LDP. FDOF not yet standardised |  Formalise FDOF from FDOF-SEM working group | 
| FDOF1: _PID as basis_                            | Extensive use of Handle system.  |  Clarify how local testing handles can be used during development, how "temporary" FDOs should evolve [@PR-PIDProfileAttributes-2.0-20220608]. Register `0.DOIP/*` and `0.FDO/*` as PIDs.  | HTTP URLs as basis for identifiers, but they are frequently not persistent. | Add strong guidance for PID services like w3id and persistence policies. |
| FDOF2: _PID record w/ type_                      |  Unspecified how to resolve from Handle to DOIP Service (!), in practice `10320/loc`, `0.TYPE/DOIPService`, `URL`, `URL_REPLICA` | Document requirements for PID Record | w3id/purl PIDs redirect without giving any metadata. Datacite DOIs content-negotiate to give registered metadata.	| Add FAIR Signposting at PID provider for minimal PID record | 
| FDOF3: _PID resolvable to bytestream & metadata_ | Byte stream resolvable (`0.DOIP/Retrieve`), `includeElementData` option can retrieve bytestream or full object structure. No method/attribute defined for separate metadata, only directly in PID Record. Unclear meaning of multiple items and bytestream chunks. | Clarify expectations for multiple items. Recommend chunks to not be used. | URIs resolvable by default. Multiple ways to resolve metadata, unclear preference. |  Add FAIR Signposting and preference order.  | 
| FDOF4: _Additional attributes_                   |  Freetext attribute keys. Attributes should be defined for FDO type (?). |  Require that attribute keys should be PIDs (or have predefined mapping to PIDs). Explicitly allow attributes not already defined in type.  |  All attributes individually identified. Any Linked Data attributes can be used by URI or with mapped prefix.  |  Clarify type expectations of required/recommended/optional attributes.  |
| FDOF5: _Interface: operation by PID_             | Extended operations use PID, but "pid-like" DOIP operations/types are not registered as handles. | Register `0.DOIP/*` and `0.FDO/*` as PIDs. Clarify that operations can be mapped to protocol directly. | CRUD operations used directly in HTTP (e.g. `PUT`). Unclear how to provide PID for additional operations. |  Specify how additional operations should be called over HTTP. | 
| FDOF6: _CRUD operations + extensions_            | `0.DOIP/Op.Create`, `Op.Retrieve`, `Op.Update`, `Op.Delete` but also `0.DOIP/Op.Search`.  | Document  | `PUT`, `GET`, `POST`, `DELETE`, `PATCH`, `HEAD` -- extension operations (e.g. WebDAV `COPY`) not used, resource patterns [@{https://docs.microsoft.com/en-us/azure/architecture/best-practices/api-design#organize-the-api-design-around-resources}] are used instead. |  Document how operation resources can be discovered from an LPD container. Document search API.  |
| FDOF7: _FDOF Types related to operations_        | Not yet formalised, by DOIP discoverable on a given FDO rather than type. PR-TypingFDOs leaves this open. |  Add explicit relation between type and operations  |  `OPTIONS` per LDP Resource, but not by type. Common types (`ldp:Resource`, `ldp:Container`) indicate LDP support, but are not required.  |  Always make LDP types explicit in FDO profile.  | 
| FDOF8: _Metadata as FDO, semantic assertions_    | DOIP includes all metadata in PID Record. Separate Metadata FDO need custom property. | Specify a `0.FDO/metadata` or similar to point to Metadata FDOs. | Assertions are always with semantics, using RDF vocabularies. Unspecified how to find additional metadata resources, `rdfs:seeAlso` is common.  | Use FAIR Signposting `describedby` link relation to additional metadata PIDs | 
| FDOF9: _Different metadata levels_               | Defines open-ended "Response Attributes" without namespaces, but mandated as "None" for all CRUD operations.  Metadata would need to be bundled within custom FDO types/attributes. Unclear how levels are separated within single FDO representation (need FDOF8?). | Declare which metadata are expected within response attribute or within FDO object. Require PIDs for custom attributes. Define how alternate metadata levels can be represented separately. |  Undefined how to handle multiple metadata granularities or domains, alternative LDP containers can present different views on same stored objects.  |  Define how to navigate to alternate views and their semantic implications, e.g. `owl:sameAs` |
| FDOF10: _Metadata schemas by community_          | Metadata schemas are in practice managed on single CORDA server as local types, using JSON Schema. | Require types to be FDOs with registered PIDs, implement shared types. |  Plethora of existing RDF vocabularies/ontologies managed by larger communities, e.g. [OBO Foundry](https://obofoundry.org/) [@doi:10.1038/nbt1346]  | Rather document better how individual ad-hoc schemas can be started for prototypes.  |
| FDOF11: _FDO collections w/ semantic relations_  | Collection type undefined by DOIP. Informal use of `HAS_PARTS` Handle attribute (e.g. [@{https://hdl.handle.net/21.14100/2fcf49d3-0608-3373-a47f-0e721b7eaa87}]).  |  |  LDP Containers required by specification, also user-created (eg. `BasicContainer`). |  Clarify relation to other collections like DCAT 3 [@{https://www.w3.org/TR/2022/WD-vocab-dcat-3-20220510/}], [Schema.org Dataset](https://schema.org/Dataset),  OAI-ORE [@{http://www.openarchives.org/ore/1.0/primer}]  | 
| FDOF12: _Deleted FDO preserve PID w/ tombstone_  | Tombstone for deleted resource undefined by DOIP. `0.DOIP/Status.104` status code does not distinguish "Not Found" or "Gone" |  Formalise tombstone requirements with new FDO type  |  `410 Gone` recommended, but `404 Not Found` common. No requirement for tombstone serialisation | Formalise tombstone requirements and serialisation | 
Table: Checking FDO guidelines [@bonino_2019; @PR-RequirementSpec-2.0-20220826] against its current implementations as DOIP [@handle:0.DOIP/DOIPV2.0] and Linked Data Platform (LDP) [@{https://fairdigitalobjectframework.org/}], with suggestions for required additions.
{#tbl:fdo-checks}

Note that the draft update to FDO specification [@PR-RequirementSpec-2.0-20220826] (see box @sec:next-step-fdo) clarifies these definitions with equivalent identifiers[^2] and relates them to further FDO requirements such as FDO Data Type Registries.   <!-- PR-RequirementSpec-2.0-202209?? -->

[^2]: Newer [@PR-RequirementSpec-2.0-20220826] renames `FDOF*` to `FDOR*` but follows same ordering.

A key observation from this is that simply using DOIP does not achieve many of the FDO guidelines. Rather the guidelines set out how a protocol like DOIPs should be used to achieve FAIR Digital Object goals. The DOIP Endorsement [@PED-DOIPEndorsement-1.0-20220608] sets out that to comply, DOIP must be used according to the set of FDO requirement documents (see box @sec:next-step-fdo), and notes _Achieving FDO compliance requires more than DOIP and full compliance is thus left to system designers_.  Likewise, a Linked Data approach will need to follow the same requirements to comply as an FDO implementation.

From our evaluation, we can observe:

* G1 and G2 call for stability and trustworthiness. While the foundations of both DOIP and Linked Data approaches are now well established -- the FDO requirements and in particular how they can be implemented are still taking shape and subject to change.
* Machine actionability (G4, G6) is a core feature of both FDOs and Linked Data. Conceptually they differ in the which way types and operations are discovered, with FDO seemingly more rigorous. In practice, however, we see that DOIP also relies on dynamic discovery of operations and that operation expectations for types (FDOF7) have not yet been defined.
* FDO proposes that types can have additional operations beyond CRUD (FDOF5, FDOF6), while Linked Data mainly achieves this with RESTful patterns using CRUD on additional resources, e.g. `order/152/items`. These are mainly stylistics but affect the architectural view -- FDOs have more of an object-oriented approach.
* FDO puts strong emphasis on the use of PIDs (FDOF1, FDOF2, FDOF3, FDOF5), but in current practice DOIP use local types, local extended operations (FDOF5) and attributes (FDOF4) that are not bound to any global namespace.
* Linked Data have a strong emphasis on semantics (FDOF8), and metadata schemas developed by community agreements (FDOF10).  FDO types need to be made reusable across servers.
* While FDO recommends nested metadata FDOs (FDOF8, FDOF9), in practice this is not found (or linked with custom keys), particularly due to lack of namespaces and the favouring of local types rather than type/property re-use. Linked Data frequently have multiple representations, but often not sufficiently linked, perhaps `prov:specializationOf` [@{http://www.w3.org/TR/2013/REC-prov-o-20130430/}]
* FDO collections are not yet defined for DOIP, while Linked Data seemingly have too many alternatives, LDP has specific native support for containers.
* Tombstones for deleted resources are not well supported, nor specified, for either approach, although the continued availability of metadata when data is removed is a requirement for FAIR principles (see RDA-A2-01M in table @sec:fair-compare).
* DOIP supports multiple chunks of data for an object (FDOF3), while Linked Data can support content-negotiation. In either case it can be unclear to clients what is the meaning or equivalence of any additional chunks.




### Comparing FDO and Web as middleware infrastructures {#sec:middleware}

In this section we take the perspective that FDO principles are in effect proposing a global infrastructure of machine-actionable digital objects. As such we can consider implementations of FDO as **middleware infrastructures** for programmatic usage, and can evaluate them based on expectations for client and server developers.

We argue that the Web, with its now ubiquitous use of REST API [@fielding_2000], can be compared as a similar global middleware. Note that while early moves for developing Semantic Web Services [@doi:10.1007/978-3-642-19193-0] attempted to merge the Web Service and RDF aspects, we are here considering mainly the current programmatic Web and its mostly light-weight use of _★★★ Linked Data_ [@{https://5stardata.info/}].

For this purpose, we here utillise the Comparison Framework for Middleware Infrastructures [@doi:10.5381/jot.2004.3.5.a2] that formalise multiple dimensions of openness, scalability, transparency, as well as characteristics known from Object-oriented programming such as modularity, encapsulation and inheritance.

| *Quality* |  FDO w/ DOIP               | Web w/ Linked Data          |
|:----------|:--------------------------:|:--------------------------:|
| **Openness**: _framework enable extension of applications_ |  FDOs can be cross-linked using PIDs, pointing to multiple FDO endpoints. Custom DOIP operations can be exposed, although it is unclear if these can be outside the FDO server. PID minting requires Handle.net prefix subscription, or use of services like [Datacite](https://datacite.org/), [B2Handle](https://eudat.eu/services/userdoc/b2handle).  |  The Web is inherently open and made by cross-linked URLs.  Participation requires DNS domain purchase (many free alternatives also exists). PID minting can be free using PURL/ARK services, or can use DOI/Handle with HTTP redirects.  |
| **Scalability**: _application should be effective at many different scales_ |  No defined methods for caching or mirroring, although this could be handled by backend, depending on exposed FDO operations (e.g.  Cordra can scale to multiple backend nodes) |  Cache control headers reduce repeated transfer and assist explicit and transparent proxies for speed-up.  HTTP `GET` can be scaled to world-population-wide with Content-Delivery Networks (CDNs), while write-access scalability is typically manage by backend. |
| **Performance**: _efficient and predictable execution_ | DOIP has been shown moderately scalable to 100 millions of objects, create operation at 900 requests/second [@{https://www.rd-alliance.org/sites/default/files/Cordra.2022.pdf}]. DOIP protocol is reusable for many operations, multiple requests may be answered out of order (by `requestId`). Multiple connections possible. Setup is typically through TCP and TLS which adds latency. |  HTTP traffic is about 10% of global Internet traffic, excluding video and social networks [@{https://www.sandvine.com/global-internet-phenomena-report-2022}]. HTTP 1 connections are serial and reusable, and concurrent connections is common. HTTP/2 adds asynchronous responses and multiplexed streams [@doi:10.17487/RFC7540] but still has TCP+TLS startup costs.  For reduced latency [@{https://blog.cloudflare.com/http-3-vs-http-2/}], HTTP/3 [@{https://datatracker.ietf.org/doc/html/draft-ietf-quic-http-34}] use QUIC [@doi:10.17487/RFC9000]) rather than TCP, already adapted heavily (30% of EMEA traffic) of which [Instagram & Facebook video](https://engineering.fb.com/2020/10/21/networking-traffic/how-facebook-is-bringing-quic-to-billions/) is the majority of traffic. |
| **Distribution transparency**: _application perceived as a consistent whole rather than independent elements._  |  Each FDO is accessed separately along with its components (typically from the same endpoint). FDOs should provide the mandatory kernel metadata fields. FDOs of the same declared type typically share additional attributes (although that schema may not be declared). DOIP does not enforce metadata typing constraints, this need to be established as FDO conventions.  |  Each URL accessed separately. Common HTTP headers provide basic metadata, although it is often not reliable. A multitude of schemas and serializations for metadata exists, conventions might be implied by a declared profile or certain media types. Metadata is not always machine findable, may need pre-agreed API URI Templates [@doi:10.17487/RFC6570], content-negotiation [@{https://developer.mozilla.org/en-US/docs/Web/HTTP/Content_negotiation}] or FAIR Signposting [@{https://signposting.org/FAIR/}]. |
| **Access transparency**: _local/remote elements accessed similarly_ |  FDOs should be accessed through PID indirection, this means difficult to make private test setup. Commonly a fixed DOIP server is used directly, which permits local non-PID identifiers.  |  Global HTTP protocol frequently used locally and behind firewalls, but at risk of non-global URIs (e.g. `http://localhost/object/1`) and SSL issues (e.g. self-signed certificates, local CAs) |
| **Location transparency**: _elements accessed without knowledge of physical location_  |  FDOs always accessed through PIDs. Multiple locations possible in Handle system, can expose geo-info.  |  PIDs and URL redirects. DNS aliases and IP routing can hide location. Geo-localised servers common for large cloud deployments.  |
| **Concurrency transparency**: _concurrent processing without interference_  |  No explicit concurrency measures. FDO kernel metadata can include checksum and date. |  HTTP operations are classified as being stateless/idempotent or not (e.g. `PUT` changes state, but can be repeated on failure), although these constraints are occassionally violated by Web applications. Cache control, `ETag` (~ checksum) and modification date in HTTP headers allows detection of concurrent changes on a single resource.  |
| **Failure transparency**: _service provisioning resilient to failures_  |  DOIP status codes, e.g. `0.DOIP/Status.104`, additional codes can be added as custom attributes  |  HTTP [status codes](https://datatracker.ietf.org/doc/html/rfc7231#section-6.5) e.g. `404 Not Found`, specific meaning of standard codes can be [documented in Open API](https://swagger.io/docs/specification/describing-responses/). Custom codes uncommon.  |
| **Migration transparency**: _allow relocating elements without interfering application_ |  Update of PID record URLs, indirection through `0.TYPE/DOIPServiceInfo` (not always used consistently). No redirection from DOIP service. | HTTP `30x` status codes provide temporary or permanent redirections, commonly used for PURLs but also by endpoints. |
| **Persistence transparency**: _conceal deactivation/reactivation of elements from their users_ |  FDO requires use of PIDs for object persistence, including a tombstone response for deleted objects. There is no guarantee that an FDO is immutable or will even stay the same type (note: CORDRA extends DOIP with [version tracking](https://www.cordra.org/documentation/design/object-versioning.html)).  |  URLs are not required to persist, although encouraged [@{https://www.w3.org/Provider/Style/URI}]. Persistence requires convention to use PIDs/PURLs and HTTP `410 Gone`.  An URL may change its content, change in type may sometimes force new URLs if exposing extensions like `.json`. Memento [@doi:10.17487/RFC7089] expose versioned snapshots. WebDAV `VERSION-CONTROL` method [@doi:10.17487/RFC3253] (used by SVN). |
| **Transaction transparency**: _coordinate execution of atomic/isolated transactions_ | No transaction capabilities declared by FDO or DOIP. Internal synchronisation possible in backend for Extended operations.  |  Limited transaction capabilities (e.g. `If-Unmodified-Since`) on same resource. WebDAV [locking mechanisms](https://datatracker.ietf.org/doc/html/rfc4918#section-6) [@doi:10.17487/RFC4918] with `LOCK` and `UNLOCK` methods.  |
| **Modularity**: _application as collection of connected/distributed elements_ | FDOs are inheritedly modular using global PID spaces and their cross-references. In practice, FDOs of a given type are exposed through a single server shared within a particular community/institution.  |  The Web is inheritently modular in that distributed objects are cross-referenced within a global URI space. In practice, an API's set of resources will be exposed through a single HTTP service, but modularity enables fine-grained scalability in backend.  |
| **Encapsulation**: _separate interface from implementation. Specify interface as contract, multiple implementations possible_  |  Indirection by PID gives separation. FDO principles are protocol independent, although it may be unclear which protocol to use for which FDO (although `0.DOIP/Transport` can be specified after already contacting DOIP). Cordra supports [native DOIP](https://www.cordra.org/documentation/api/doip.html), [DOIP over HTTP](https://www.cordra.org/documentation/api/doip-api-for-http-clients.html) and [Cordra REST API](https://www.cordra.org/documentation/api/rest-api.html))  |  HTTP/1.1 semantics can seemlessly upgrade to HTTP/2 and HTTP/3. `http` vs `https` URIs exposes encryption detail[^tls]. Implementation details may leak into URIs (e.g. `search.aspx`), countered by deliberate design of URI patterns [@{https://www.w3.org/Provider/Style/URI.html}] and PIDs via Persistent URLs (PURL).  |
| **Inheritance**: _Deriving specialised interface from another type_ | DOIP types nested with parents, implying shared FDO structures (unclear if operations are inherited). FDO establishes need for multiple Data Type Registries (e.g. managed by a community for a particular domain). Semantics of type system currently undefined for FDO and DOIP, syntactic types can also piggyback of FDO type's schema (e.g. [CORDRA `$ref`]((https://www.cordra.org/documentation/design/schemas.html#schema-references)) use of [JSON Schema references](https://json-schema.org/draft/2020-12/json-schema-core.html#references) [@{https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-00}])  | Syntactically Media Type with multiple suffixes [@{https://datatracker.ietf.org/doc/draft-ietf-mediaman-suffixes/00/}] (mainly used with `+json`), declaration of subtypes as profiles (RFC6906) [@doi:10.17487/RFC6906]. In metadata, semantic type systems (RDFS [@{http://www.w3.org/TR/rdf-schema/}], OWL2 [@{http://www.w3.org/TR/owl2-overview/}], SKOS [@{http://www.w3.org/TR/skos-primer}]). OpenAPI 3 [@{https://spec.openapis.org/oas/v3.1.0.html}] [inheritance and Polymorphism](https://spec.openapis.org/oas/v3.1.0#composition-and-inheritance-polymorphism). XML `xsd:schemaLocation` or `xsd:type` [@{http://www.w3.org/TR/xmlschema11-1/}], JSON `$schema` [@{https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-00}]), JSON-LD `@context` [@{http://www.w3.org/TR/json-ld/}]. Large number of domain-specific and general ontologies define semantic types, but finding and selecting remains a challenge. |
| **Signal interfaces**: _asynchronous handling of messages_ | DOIP 2.0 is synchronous, in FDO async operations undefined. Could be handled as custom jobs/futures FDOs | HTTP/2 [multiplexed streams](https://datatracker.ietf.org/doc/html/rfc7540#section-5) [@doi:10.17487/RFC7540], Web Sockets [@{https://websockets.spec.whatwg.org/}], Linked Data Notifications [@{https://www.w3.org/TR/ldn/}], AtomPub [@doi:10.17487/RFC5023], SWORD [@{https://swordapp.github.io/swordv3/swordv3.html}], Micropub, more typically ad-hoc jobs/futures REST resources |
| **Operation interfaces**: _defining operations possible on an instance, interface of request/response messages_ | CRUD predefined in DOIP, custom operations through `0.DOIP/Op.ListOperations` (can be FDOs of type `0.TYPE/DOIPOperation`, more typically local identifiers like `"getProvenance"`) | CRUD predefined in [HTTP methods](https://datatracker.ietf.org/doc/html/rfc7231#section-4.3) [@doi:10.17487/RFC7231], ([extended by registration](https://www.iana.org/assignments/http-methods/http-methods.xhtml)), URI Templates [@doi:10.17487/RFC6570], [OpenAPI operations](https://spec.openapis.org/oas/v3.1.0.html#operation-object) [@{https://spec.openapis.org/oas/v3.1.0.html}], HATEOAS[^hateoas] incl. Hydra [@{https://www.hydra-cg.com/}], schema.org Actions [@{https://schema.org/docs/actions.html}), JSON HAL [@{https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-08}] & Link headers (RFC8288) [@doi:10.17487/RFC8288] |
| **Stream interfaces**: _operations that can handle continuous information streams_ | Undefined in FDO. DOIP can support multiple byte stream elements (need custom FDO type to determine stream semantics) | HTTP 1.1 [@doi:10.17487/RFC7230] [chunked transfer](https://datatracker.ietf.org/doc/html/rfc7230#section-4.1), HLS (RFC8216) [@doi:10.17487/RFC8216], MPEG-DASH (ISO/IEC 23009-1:2019) [@{https://www.iso.org/standard/79329.html}]  |

Table: Comparing FAIR Digital Object (with the DOIP 2.0 protocol [@handle:0.DOIP/DOIPV2.0]) and Web technologies (using Linked Data) as middleware infrastructures [@doi:10.5381/jot.2004.3.5.a2]
{#tbl:fdo-web-middleware}

[^hateoas]: HATEOAS: Hypermedia as the Engine of Application State [@fielding_2000], an important element of the REST architectural style.

[^tls]: The `http` protocol (port 80) can in theory also upgrade [@doi:10.17487/RFC2817] to TLS encryption, as commonly used by [Internet Printing Protocol](https://www.rfc-editor.org/rfc/rfc8010.html#section-8.2) for `ipp` URIs, but on the Web, best practice is explicit `https` (port 443) URLs to ensure following links stay secure. 


[^chunked]: Although it is possible with `0.DOIP/Op.Retrieve` to request only particular individual elements of an DO (e.g. one file), unlike HTTP's `Range` request, it is not possible to select individual chunks of an element's bytestream.

Based on the analysis in Table @tbl:fdo-web-middleware, we make the following observations:

* With respect to the aspect of _Performance_, it is interesting to note that while the first version of DOIP [@{https://www.dona.net/doipv1doc}] supported multiplexed channels similar to HTTP/2 (allowing concurrent transfer of several digital objects). Multiplexing was removed for the much simplified DOIP 2.0 [@handle:0.DOIP/DOIPV2.0]. Unlike DOIP 1.0, DOIP 2.0 will require a DO response to be sent back completely, as a series of segments (which again can be split the bytes of each binary _element_ into sized _chunks_), before transmission of another DO response can start on the transport channel. It is unclear what is the purpose of splitting a binary into chunks on a channel which no longer can be multiplexed and the only property of a chunk is its size[^chunked]. 
* HTTP has strong support for scalability and caching, but this mostly assumes read-operations from static resources. FDO has no view on immutability or validity of retrieved objects, but this should be taken into consideration to support large-scale usage.
* HTTP optimisations for performance  (e.g. HTTP/2, multiplexing) is largely used for commercial media distribution (e.g. Netflix), and not commonly used by providers of FAIR data
* Cloud deployment of Web applications give many middleware benefits (Scalability, Distribution, Access transparancy, Location transparancy) -- it is unclear how DOIP as a custom protocol would perform in a cloud setting as most of this infrastructure assumes HTTP as the protocol.
* Programmatically the Web is rather unstructured as middleware, as there are many implementation choices. Usually it is undeclared what to expect for a given URI/service, and programmers follow documented examples for a particular service rather than automated programmatic exploration across providers. This mean one can consider the Web as an ecosystem of smaller middlewares with commonalities.
* Many providers of FAIR Linked Data also provide programmatic REST API endpoints, e.g. [UNIPROT](https://www.uniprot.org/help/programmatic_access), [ChEMBL](https://chembl.gitbook.io/chembl-interface-documentation/web-services), but keeping the FAIR aspects such as retrieving metadata in such a scenario may require combining different services using multiple formats and identifier conventions.



### Assessing FDO against FAIR {#sec:fair-compare}

In addition to having "FAIR" in its name, the FAIR Digital Object guidelines [@bonino_2019] also include _G3: FDOs must offer compliance with the FAIR principles through measurable indicators of FAIRness._ [@PR-RequirementSpec-2.0].

Here we evaluate to what extent the FDO guidelines and its implementation with DOIP and Linked Data Platform [@{https://fairdigitalobjectframework.org/}] comply with the FAIR principles [@doi:10.1038/sdata.2016.18]. Here we've used the RDA's FAIR Data Maturity Model [@doi:10.15497/rda00050] as it has decomposed the FAIR principles to a structured list of FAIR indicators [@doi:10.5334/dsj-2020-041], importantly considering _Data_ and _Metadata_ separately. In our interpretation for Table @tbl:fair-data-maturity-model we have for simplicity chosen to interpret "data" in FDOs as the associated bytestream of arbitrary formats, with remainining JSON/RDF structures always considered as metadata. 

|FAIR ID                   | Indicator                                                                 | FDO guidelines   | FDO/DOIP    | FDO/LDP    | Linked Data examples    |
|:-----|:---------------|:------:|:--------------------:|:--------------------:|:--------------------:|
| RDA-F1-01M     | Metadata is identified by a persistent identifier                         | FDOF4    | Optional _Metadata FDO_ w/separate PID    | Content-negotiation to URL, not required to be PID    | Metadata typically don't have own PID    | 
| RDA-F1-01D     | Data is identified by a persistent identifier                             | FDOF1    | PIDs required (FDOF1). Handle, DOI.    | FDOF-IR (Identifier Record). PID can be any URI    | "Cool" URIs [@{https://www.w3.org/Provider/Style/URI};{https://www.w3.org/TR/cooluris/}], PURL services incl. `purl.org`, `w3id.org`    | 
| RDA-F1-02M     | Metadata is identified by a globally unique identifier                    | FDOR4 FDOF8    | Optional _Metadata FDO_, unspecified how to indicate | Content-negotiation to URL    | Not required, content-negotiation can redirect to URL or `Content-Location`. FAIR Signposting.    |
| RDA-F1-02D     | Data is identified by a globally unique identifier                        | FDOF1    | All FDOs have PIDs (FDOR1), DOIP uses Handle system    | FDOF-IR (Identifier Record)    | Always accessed by URL    |
| RDA-F2-01M     | Rich metadata is provided to allow discovery                              | FDOF2 FDOF4 FDOF8 FDOF9    | FDO has key-value metadata. Unclear how to link to additional metadata.    | FDOF-IR links to multiple metadata records    | RDF-based metadata by content negotiation or FAIR Signposting. Embedded in landing page (RDFa).    | 
| RDA-F3-01M     | Metadata includes the identifier for the data                             | ---    | `id` and `type` are required metadata elements PIDs, also implicit as requests must use PID    | PID only required in FDOF-IR record.    | PID inclusion typical, but often inconsistent (e.g. `www.example.com` vs `example.com`) or missing (use of `<>` as _this_ subject)    | 
| RDA-F4-01M     | Metadata is offered in such a way that it can be harvested and indexed    | FDOF10    | No, registries not required (except Data Type Registries). Handle registry only searchable by PID.    | Not specified    | Not specified, several registries/catalogues for vocabularies/types (e.g. [@{https://bioportal.bioontology.org/ontologies}, {https://lod-cloud.net/}]). Indexing by search engines if exposing HTML w/schema.org.    |
| RDA-A1-01M     | Metadata contains information to enable the user to get access to the data | FDOF3 FDOF6   |  Directly by DOIP, but not included in FDO metadata. `handle.net` HTTP resolution may redirect to landing page  |  Any property can point to URIs, but unclear if it is data  | Common with clickable "follow your nose" URLs   |
| RDA-A1-02M     | Metadata can be accessed manually (i.e. with human intervention)           | ---    | (Cordra HTML landing page from `handle.net` URIs)  | Optional content-negotiation, e.g. by Apache Marmotta, OpenLink Virtuoso  | HTTP content-negotiation to HTML is common    |
| RDA-A1-02D     | Data can be accessed manually (i.e. with human intervention)               | ---    | (Cordra HTML landing page from `handle.net` URIs)  | Optional content-negotiation  | Direct download, HTML landing pages common for DOIs  |
| RDA-A1-03M     | Metadata identifier resolves to a metadata record                          | FDOF8+FDOF2    | ---   |  ---   |  `Content-Location` or HTTP redirection may indicate metadata URI  |
| RDA-A1-03D     | Data identifier resolves to a digital object                               | FDOF2    |  Required, but frequently not directly resolvable  |  Recommended, but any URI acceptable  |  Resolvable HTTP/HTTPS URIs are most common, now infrequent URNs are not directly resolvable |
| RDA-A1-04M     | Metadata is accessed through standardised protocol                         | G9 FDOF3    | Retrievable from PID (FDOF3). Informal DOIP standard maintained by DONA Foundation    | LDP standard maintained by W3C, HTTP standards maintained by IETF, FDO components resolved by informal proposals (custom vocabulary, extra HTTP methods) or HTTP content negotiation)    | Formal HTTP standards maintained by IETF, HTTP content negotiation, informal FAIR Signposting   |
| RDA-A1-04D     | Data is accessible through standardised protocol                           | G9    |  (see above)   | HTTP [@doi:10.17487/RFC9110]  |  HTTP/HTTPS, FTP (now less common), GridFTP [@doi:10.1109/SC.2005.72] (for large data), ARK [@{https://datatracker.ietf.org/doc/id/draft-kunze-ark.html}]  |
| RDA-A1-05D     | Data can be accessed automatically (i.e. by a computer program)    | G4 FDOF3 FDOF6    |  Required, but few client libraries  |    |  Ubiquitous, hundreds of HTTP libraries   |
| RDA-A1.1-01M   | Metadata is accessible through a free access protocol                      | G1 G8 G9    | Partially realised: Handle system is open[^patent] protocol [@{doi:10.17487/RFC3652}]. One server implementation [@{https://www.handle.net/download_hnr.html}], free[^license]. One DOIPv2 implementation ([CORDRA](https://www.cordra.org/)): free under BSD-like license (not recognised as Open Source).    | [LDP](http://www.w3.org/TR/ldp/) is open W3C recommendation. [Multiple LDP implementations](https://www.w3.org/wiki/LDP_Implementations). | DNS, HTTP, TLS, RDF standards are open, free and universal, large number of Open Source clients and [servers](https://en.wikipedia.org/wiki/Comparison_of_web_server_software).    | 
| RDA-A1.1-01D   | Data is accessible through a free access protocol                          | G9    | (see above)  |  URI, DNS, HTTP, TLS   |  URI, DNS, HTTP, TLS. Non-free DRM may be used (e.g. subscription video streaming) |
| RDA-A1.2-01D   | Data is accessible through an access protocol that supports authentication and authorisation  | (FDOR9)    | TLS certificates, `authentication` field (details unspecified)    |  Implied  | HTTP authentication, TLS certificates    | 
| RDA-A2-01M     | Metadata is guaranteed to remain available after data is no longer available  | FDOF12    | ---   | Unspecified, however FDOF-IR links to separate metadata records    | ---    | `410 Gone` status infrequently used, without metadata. Possible [with signposting](https://w3id.org/a2a-fair-metrics/25-http-citeas-author-410-gone/)    | 
| RDA-I1-01M     | Metadata uses knowledge representation expressed in standardised format    | FDOF8    | Required, but not currently defined    | ---    | Always implied by use of RDF syntaxes.    |
| RDA-I1-01D     | Data uses knowledge representation expressed in standardised format        | ---  |  ---  |  ---  | Common (e.g. HDF5, JSON, XML), yet common scientific data formats frequently not standardised   |
| RDA-I1-02M     | Metadata uses machine-understandable knowledge representation              | FDOF8    | Required    | Optional RDF metadata with any vocabulary | Always implied by use of RDF syntaxes.    |
| RDA-I1-02D     | Data uses machine-understandable knowledge representation                  | G4 G7 FDOR2   | No requirements on binary data formats  | Only indirectly, [LDP Basic Container](https://www.w3.org/TR/ldp/#dfn-linked-data-platform-basic-container) reference only information resources   | Common, specially for scientific data formats   |
| RDA-I2-01M     | Metadata uses FAIR-compliant vocabularies                                  | G3 FDOF10  | Informally required    | Unspecified, implied by use of RDF?    | FAIR practices for LD vocabularies increasingly common, sometimes inconsistent (e.g. PURLs that don't resolve) or incomplete (e.g. unknown license)    | 
| RDA-I2-01D     | Data uses FAIR-compliant vocabularies                                      | ---   | ---   |  ---  |  Uncommon, except for some XML and RDF-embedding formats, e.g. Extensible Metadata Platform (XMP) [@{https://www.iso.org/standard/75163.html}] |
| RDA-I3-01M     | Metadata includes references to other metadata                             | FDOR8    | Implied (attributes to PIDs), currently unspecified if given attribute is value or reference  | ---    | By definition (Linked Data reference existing URIs [@{https://www.w3.org/standards/semanticweb/data}]), `rdfs:seeAlso`, FAIR signposting [@{https://signposting.org/FAIR/}] `describedby`    |
| RDA-I3-01D     | Data includes references to other data                                     | G6 FDOR3 FDOR11    |  ---   | ---   |  URL hyperlinks common in several formats (HTML, PDF, JSON, XML).  |
| RDA-I3-02M     | Metadata includes references to other data                                 | G6 FDOR3 FDOR8   |  Implied from custom FDO type's attribute   |  LDP Direct Container members can be any resources |  URI objects are frequently data references, may be indirect via PID  |
| RDA-I3-02D     | Data includes qualified references to other data                           | FDOR3 FDOR11   |  Only indirectly through FDO metadata   |  Indirectly through LDP membership   |  Uncommon: Link relations, FAIR Signposting   |
| RDA-I3-03M     | Metadata includes qualified references to other metadata                   | (FDOR3)    | Qualification by attribute keys defined per FDO Type | [LDP Direct Container](https://www.w3.org/TR/ldp/#dfn-linked-data-platform-direct-container)  | Qualifications by property, PROV bundles [@{https://www.w3.org/TR/2013/NOTE-prov-links-20130430/}], [schema.org/Role](https://schema.org/Role)   |
| RDA-I3-04M     | Metadata include qualified references to other data                        | (FDOR3)    | Qualification by attribute keys defined per FDO type | [LDP Indirect Container](https://www.w3.org/TR/ldp/#dfn-linked-data-platform-indirect-container)   | Qualifications by property, n-ary indirection (schema.org Role [@{http://blog.schema.org/2014/06/introducing-role.html}], `prov:specializationOf` [@{https://www.w3.org/TR/prov-o/#specializationOf}], OAI-ORE Proxy [@{http://www.openarchives.org/ore/1.0/datamodel#Proxies}])  |
| RDA-R1-01M     | Plurality of accurate and relevant attributes are provided to allow reuse  | FDOF4    | Required. Kernel metadata attributes desired [@WD-KernelAttributes-1.0-20220828] but not assigned PIDs yet.   | Unspecified. Multiple metadata records can allow multiple semantic profiles.    | Large number of general and domain-specific vocabularies can make it hard to find relevant attributes. Rough consensus on kernel metadata: schema.org [@{https://schema.org/}], Dublin Core Terms [@{http://purl.org/dc/terms/}], DCAT [@{https://www.w3.org/TR/vocab-dcat-2/}], FOAF [@{http://xmlns.com/foaf/spec/}]    | 
| RDA-R1.1-01M   | Metadata includes information about the licence under which the data can be reused  | ---  | `licenseConditions` URL/PID in kernel metadata [@WD-KernelAttributes-1.0-20220828]  | ---    | Dublin Core Terms `dct:license` frequently recommended, frequently not required, e.g. [by DCAT 2](https://www.w3.org/TR/vocab-dcat-2/#Property:distribution_license) [@{https://www.w3.org/TR/vocab-dcat-2/}]
| RDA-R1.1-02M   | Metadata refers to a standard reuse licence                                | ---    | ---    | ---    | [SPDX](https://spdx.org/licenses/) and [Creative Commons](https://creativecommons.org/) URIs common, identifiers often inconsistent |
| RDA-R1.1-03M   | Metadata refers to a machine-understandable reuse licence                  | ---    | ---    | ---    | [SPDX documents](https://spdx.dev/resources/use/#documents) uncommon  |
| RDA-R1.2-01M   | Metadata includes provenance information according to community-specific standards  | FDOR9 FDOR10    | Unspecified (some CORDRA types add getProvenance methods). PID Kernel attributes? 	Unspecified 	W3C PROV-O, PAV    |
| RDA-R1.2-02M   | Metadata includes provenance information according to a cross-community language  | FDOR9 FDOR8  |  ---   | ---   |  W3C PROV-O [@{http://www.w3.org/TR/2013/REC-prov-o-20130430/}], PAV [@doi:10.1186/2041-1480-4-37], Dublin Core Terms [@{http://dublincore.org/specifications/dublin-core/dcmi-terms/2020-01-20/}]  |
| RDA-R1.3-01M   | Metadata complies with a community standard                                | FDOR10 FROR8    | (Emerging, e.g. DiSSCo Digital Specimen [@doi:10.1162/dint_a_00134])  | ---  |  Common, e.g. DCAT 2 [@{https://www.w3.org/TR/2020/REC-vocab-dcat-2-20200204/}], BioSchemas [@{https://bioschemas.org/}] |
| RDA-R1.3-01D   | Data complies with a community standard                                    | (FDOR3)    | ---    |  ---  |  Common, HTTP use registered IANA [media types](https://www.iana.org/assignments/media-types/media-types.xhtml), additional scientific file formats frequently not standardised or identified   |
| RDA-R1.3-02M   | Metadata is expressed in compliance with a machine-understandable community standard  | FDOF4 FDOF10    | Recommended    | ---  | Common practice for ontologies, specially in bioinformatics, e.g. BioPortal [@{https://bioportal.bioontology.org/ontologies}], Darwin Core [@doi:10.1371/journal.pone.0029715]  |
| RDA-R1.3-02D     | Data is expressed in compliance with a machine-understandable community standard      | (FDOR2)    | No, FDO is typed but data can be any bytestream   | --- | Occassionally, (e.g. [GFF3](https://github.com/The-Sequence-Ontology/Specifications/blob/master/gff3.md), [FITS](https://fits.gsfc.nasa.gov/fits_standard.html), [ESRI](https://www.loc.gov/preservation/digital/formats/fdd/fdd000280.shtml))    |

Table: Assessing RDA's FAIR Data Maturity Model [@doi:10.15497/rda00050; @doi:10.5334/dsj-2020-041] (first 2 columns) against the FDO guidelines [@bonino_2019], FDO implemented with the protocol DOIPv2 [@handle:0.DOIP/DOIPV2.0], Linked Data Platform (LDP) [@{https://fairdigitalobjectframework.org/}] and examples from Linked Data practices in general. (--- indicates _Unspecified_, may be possible with additional conventions)
{#tbl:fair-data-maturity-model}

[^license]: The [Handle.net public license](http://www.handle.net/HNRj/HNR-9-License.pdf)] is not OSI-approved [@{https://opensource.org/licenses}] as an open source license -- it includes usage restrictions and requires Service Agreements. It is not a DOIP requirement to host a local Handle instance, e.g. EOSC provides the [B2HANDLE](https://sp.eudat.eu/catalog/resources/fc6b2d30-09cd-4c25-b71a-7bc6de77910c) service for acquiring Handle prefixes.

[^patent]: The `Handle.net` system was previously covered by software patent [US6135646A](https://patents.google.com/patent/US6135646A/en) which [expired](https://circleid.com/posts/20161025_selling_dona_snake_oil_at_the_itu#11461) in 2013.

From this evaluation we observe:

* Linked Data in general is strong on metadata indicators, but LDP approach is weak as it has little metadata guidance
* FDO/DOIP are stronger on identifier indicators 
* Indicators on standard protocols (RDA-A1-04M, RDA-A1-04D, RDA-A1.1-01M, RDA-A1.1-01D) favour LDP's mature standards (HTTP, URI) -- the DOIPv2 specification [@handle:0.DOIP/DOIPV2.0] has currently only a couple of implementations and is expressed informally. The underlying Handle system for PIDs is arguably mature and commonly used by researchers (this article alone references about 80 DOIs), however DOIs are more commonly accessed as HTTP redirects through resolvers like <https://doi.org/> and <http://hdl.handle.net/> rather than the Handle protocol.
* RDA-A1-02M and RDA-A1-02D highlights access by manual intervention, which is common for http/https URIs, but also using above PID resolvers for DOIP implementation [CORDRA](https://www.cordra.org/) (e.g. <https://hdl.handle.net/21.14100/90ec1c7b-6f5e-4e12-9137-0cedd16d1bce>), yet neither LDP, FDO nor DOIP specifications recommends human-readable representations to be provided
* Neither DOIP nor LDP require license to be expressed (RDA-R1.1-01M, RDA-R1.1-02M, RDA-R1.1-03M), yet this is crucial for re-use and machine actionability of FAIR data and metadata to be legal
* Machine-understandable types, provenance and data/metadata standards (RDA-R1.1-03M RDA-R1.3-02M, RDA-R1.3-02M, RDA-R1.3-02D) are important for machine actionability, but are currently unspecified for FDOs. [@WD-ImplAttributesTypesProfiles-0.2-20221127] explores possible machine-readable FDO types, however the type systems themselves have not yet been formalised. Linked Data on the other side have too many semantic and syntactic type systems, making it difficult to write consistent clients.
* Indicators for FAIR data are weak for either approach, as too much reliance is put on metadata. For instance in Linked Data, given a URL of a CSV file, what is its persistant identifier or license information? FAIR Signposting [@{https://signposting.org/FAIR/}] can improve findability of metadata using HTTP Link relations, which enable an FDO-like overlay for any HTTP resource. In DOIP, responses for bytestreams can include the data identifier: if that is a PID (not enforced by DOIP), its metadata is accessible.
* Resolving FDOs via Handle PIDs to the corresponding DOIP server is currently undefined by FDO and DOIP specifications. `0.TYPE/DOIPServiceInfo` lookup is only possible once DOIP server is known. g

## EOSC Interoperability Framework

**TODO**: Introduce EOSC IF

The EOSC Interoperability Framework [@doi:10.2777/620649] in section 3.6 recommends:

| Layer    | Recommendation    | FDO    | Linked Data    | 
| ---    | -----------    | -----------    | -----------    |
| Technical    | Open Specification    |  FDO specifications are semi-open, process gradually more transparent  |  Open and transparent standard processes through W3C & IETF |
| Technical    | Common security & privacy framework    |  Unspecified |  TLS for encryption, multiple approaches for single-sign-on (e.g. ORCID, Life Science Login). Privacy largely unspecified. |
| Technical    | Easy SLAs for service providers    | Unspecified    | None    |
| Technical    | Access data in different formats    | None formalised, custom operations or relations    | Content-negotiation, `rel=alternate` relations    |
| Technical    | Coarse-grained/fine-grained search tools    |  Freetext  `0.DOIP/Op.Search` on local DOIP, no federation  |  Coarse-grained e.g. [Google Dataset Search](https://datasetsearch.research.google.com/), fine-grained (e.g. federated SPARQL) require detailed vocabulary/metadata insight  | 
| Technical    | Clear PID policy    | Strong FDO requirements, tends towards Handle system.    | Not required, different communities set policies    |
| Semantic    | Clear definitions for concepts/metadata/schemas    | Required by FDO requirements, but not yet formalised    | Ontologies, SKOS, OWL    | 
| Semantic    | Semantic artefacts w/ open licenses    | All artefacts are PIDs w/ license required by kernel metadata?    | Open License is best practice for ontology publishing    | 
| Semantic    | Documentation for each semantic artefact    | No direct rendering from FDO, no requirement for human-readable description    | Ontology rendering, content-negotiation    |
| Semantic    | Repositories of artefacts    | Required, but not formalised    | Bioontologies, etc    |
| Semantic    | Repositories w/ clear governance    | Recommended    | Largely self-governed repositories, if well-established may have clear governance.    | 
| Semantic    | Minimal metadata model for federated discovery    | Kernel metadata [@WD-KernelAttributes-1.0-20220828]   | DCAT, ++    | 
| Semantic    | Crosswalks from minimal metadata model    |  FDO Typing recommends referencing existing type definitions, but not as separate crosswalks   | Multiple crosswalks for common metadata models, but frequently not in semantic format    |
| Semantic    | Extensibility options for diciplinary metadata    | Communities encouraged to establish own types    | Extensible by design, domain-specific metadata may be at different granularity    |
| Semantic    | Clear protocols/building blocks for federation/harvesting of artefact catalogues    | Collection types not yet defined    | SWORD, OAI-PMH    | 
| Organisational    | Interoperability-focused rules of participation recommendations    | Recommended |  Implied only by some communities, tendency to specialise  |
| Organisational    | Usage recommendations of standardised data formats    | None    |  None -- but common for metadata (e.g. JSON-LD) | 
| Organisational    | Usage recommendations of vocabularies    | Recommended by community   | Common (see [RDMKit](https://rdmkit.elixir-europe.org/metadata_management))   | 
| Organisational    | Usage recommendations of metadata    | Recommended by community    | RO-Crate, Bioschemas    | 
| Organisational    | Management of permanent organization names/functions    | Handle owner, but unclear contact. Contact info in DOIP service provider    | ROR. DCAT contacts.    | 
| Legal    | Standardised human and machine-readable licenses    | None    | [SPDX](https://spdx.org/licenses/)    | 
| Legal    | Permissive licenses for metadata (CC0, CC-BY-4.0)    | Undefined    | Both CC0, CC-BY-4.0 common, e.g. in DCAT    | 
| Legal    | Different licenses for different parts    | Each part as separate FDO can have separate license    | DCAT, RO-Crate, Named graphs for splitting metadata   | 
| Legal    | Mark expired/inexistent copyright    | Undefined    | Unclear, semantics assume copyright valid    | 
| Legal    | Mark orphaned data    | Tombstone for deleted data, but no owner of DOIP server means FDO disappears    |  Frequently data and endpoint has no known maintainer, archiving in common repositories becoming common  | 
| Legal    | List recommended licenses    | Undefined    | Best practice recommendations   | 
| Legal    | Track license evolution for dataset    | Undefined    | Versioning with PAV/PROV/DCAT    | 
| Legal    | Policy/guidance for patent/trade secrets violation    | Undefined    | Undefined, legal owner may be specified    | 
| Legal    | GDPR compliance for personal data    | Undefined | Undefined |
| Legal    | Restrict access/use if legally required    | By transport protocol (undefined by FDO/DOIP)    | Diverging approaches, typically landing pages w/ auth&auth or click-thru    |
| Legal    | Harmonised terms-of-use    | Undefined    | Undefined    | 
| Legal    | Alignment between EOSC and national legislation    | Not applicable    | Not applicable    | 

Observations:

* The recommendations from EOSC IF are at a higher level that mainly affect governance and practices by communities
* Technical aspects highlighted by EOSC IF 
* Search/indexing is important FAIR aspect for Findability, but is poorly supported by current FDO and Linked Data. There is a strong role for organizations like EOSC to provide broader registries than more specialised metadata federations like OpenAIRE.
* FDO principles have strong recommendations for community development of organisational aspects.
* Both FDO and LD are weak on legal aspects like licensing, privacy and usage policies -- these are essential for cross-institutional and cross-repository access of FAIR objects

  

## Discussion {#sec:discussion}

**TODO**

- Ramnifications of ide
- Finish tables
- Bullet points per table
- Send in Google Docs


### (What does it mean for Linked Data?)

The FAIR Digital Object approach raises many important points for Linked Data practictioners. 
At first glance, the explicit requirements of FDOs may seem to be easy to furfill by different parts of the Semantic Web Cake [@{https://www.w3.org/2000/Talks/1206-xml2k-tbl/slide10-0.html}]. 
However, our deeper investigation, based on multiple frameworks, highlights that the openness and variability of how Linked Data is deployed makes it difficult to achieve the FDO goals without significant effort. 

While RDF and Linked Data have been suggested as prime candidates for making FAIR data, we argue that when different developers have too many degrees of freedom (such as serialization formats, vocabularies, identifiers, navigation), interoperability is hampered -- this makes it hard for machines to reliably consume multiple FAIR resources across repositories and data providers.

We therefore identify the need for an explicit FDO profile of Linked Data that sets pragmatic constraints and stronger recommendations for consistent and developer-friendly deployment of digital objects. 
Such a combination of efforts will utillise both the benefits of mature Semantic Web technologies (e.g. federated knowledge graph queries and rich validation) and data management practices that follow FDO guidance in order to grow a rigid (yet flexible) ecosystem of machine-actionable scholarly objects. 


<!-- Leave out

## Simplifying the Semantic Web Architecture

* [@10.1007/978-3-540-68234-9_22] updating Semantic Web Architeture
* [@10.3991/ijet.v10i5.4754] ?

Kingsley Uyi Idehen points out that the traditional Semantic Web Cake has a serious flaw in implying that XML is a requirement and points out that the Semantic Web is *not* distinct from the World Wide Web [@{https://medium.com/openlink-software-blog/semantic-web-layer-cake-tweak-explained-6ba5c6ac3fab}] . 

Below we reconsider the Semantic Web Architecture as updated by Kingsley, and simplify it with the most obvious technical choices as of 2022 to align it with the main FDO requirements:

* Semantic Web of Linked Data: Use HTTP 1.1 or newer. HTTP resolution of PID must redirect to JSON-LD, optionally via a HTML landing page with FAIR Signposting link headers.
* Document Type: Use JSON-LD 1.1 or newer. `@context` must resolve by versioned PID[^schemapid]. Use flattened, compacted profile of JSON-LD for consistent JSON.
* Sentence Part identifiers: Use PIDs and `#`-fragments of PIDs, allowing other URLs for non-FDO references. Use DOIs or Handle
* Abstract language: Use a single graph. Explicitly declare `@type` and `s:name` of all subjects.
* Query: Use SPARQL 1.1 or newer.
* Dictionary: Use `https://schema.org/` as base vocabulary, extend using PID to vocabularies in SKOS. 
* Rules: Use SHACL Core in JSON-LD
* Transmission: Always use TLS and `https://` URIs (including in new PIDs[^schemahttps]). Use services like Let's Encrypt for ad-hoc certificates.

[^schemapid]: Note that while schema.org's JSON-LD examples frequently use `"@context": "https://schema.org"` this is not a versioned PID (not even a complete URI). While releases of this particular vocabulary strive to not break backward compatibility, we suggest using for instance <https://schema.org/version/14.0/schemaorg-current-https.jsonld> or an indirect w3id 

[^schemahttps]: The schema.org JSON-LD context used `http` PIDs since 2011, with a gradual transition to `https`, see [schemaorg/schemaorg#2853](https://github.com/schemaorg/schemaorg/issues/2853) and [schemaorg/schemaorg#2886](https://github.com/schemaorg/schemaorg/issues/2886)

As technological improvements to Semantic Web continue, and FDO requirements mature, this FDO-LD profile will need to be regularly revised, for instance every 3 years.

-->


## Conclusion

...


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
