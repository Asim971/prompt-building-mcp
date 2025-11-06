Dynamics 365 in Global Manufacturing: Gaps and ISV Opportunities
Introduction
Microsoft Dynamics 365 has become a cornerstone ERP/CRM platform for manufacturers worldwide, offering modules for finance, supply chain, production, and more. However, real-world feedback from manufacturing users – via forums, user reviews, case studies, and integration experiences – reveals that certain industry-specific needs remain unmet. Global manufacturers often encounter gaps and pain points when using Dynamics 365 in complex production environments. Common complaints include missing functionality for advanced manufacturing scenarios, limitations in out-of-box tools, integration hurdles with third-party systems, and usability challenges. This report analyzes those gaps in current Dynamics 365 usage for manufacturing and proposes innovative Independent Software Vendor (ISV) product ideas to fill these voids. The goal is to identify high-demand areas where ISV solutions could integrate with Dynamics 365 to significantly improve manufacturing workflows, especially in areas underserved by Microsoft’s native offerings.
Key Gaps and Pain Points in Dynamics 365 for Manufacturing
1. Multi-Site and Advanced Manufacturing Functionality: Dynamics 365’s support for multi-plant manufacturing and complex production methods can be lacking in certain editions. For example, Dynamics 365 Business Central (BC) – popular with small-to-mid manufacturers – does not support true multi-site production out of the box
community.dynamics.com
. Users report that BC cannot natively plan a scenario where a sales order at one facility triggers production at another; such cross-site coordination requires custom workarounds or manual planning
community.dynamics.com
. Similarly, BC cannot handle multiple manufacturing facilities or making the same product at different plants under one company
vicinitysoftware.com
. This is a critical gap for growing manufacturers with distributed plants. BC is also built mainly for discrete manufacturing and has limited support for process manufacturing needs like recipe/formula management and continuous batch processes
dswius.com
. Users from process industries (food, chemical, etc.) note the absence of features for batch yields, co-products, and by-products. In fact, BC does not allow recording multiple outputs from a single batch input, making it impossible to model certain real-world batch production without heavy customization
vicinitysoftware.com
. Handling of variable material yields is rudimentary – the system assumes fixed consumption, which “doesn’t work in our world of batch manufacturing,” leading to inventory inaccuracies
vicinitysoftware.com
vicinitysoftware.com
. Another missing piece is support for lean manufacturing and Kanban workflows – BC has no built-in Kanban or agile manufacturing module for pull-based production, which process improvement teams find disappointing
dswius.com
. Overall, manufacturers frequently turn to extensions or custom code to fill these functional gaps in multi-site coordination, formula-based production, and lean execution. 2. Production Planning and Scheduling Limitations: While Dynamics 365 includes Material Requirements Planning (MRP) and basic scheduling, users have highlighted constraints in its planning intelligence. For instance, Business Central’s planning engine assumes infinite capacity by default and requires manual parameter tweaking
dswius.com
. It lacks built-in advanced finite scheduling or optimization algorithms, which means it may not account for real-world capacity constraints or sequence-dependent setup times without customization. Many manufacturers desire more sophisticated scheduling tools (e.g. finite capacity scheduling, optimized sequencing) to minimize downtime and bottlenecks – a need often met by third-party Advanced Planning and Scheduling (APS) systems. Demand forecasting is another pain point. Out-of-box Dynamics 365 forecasting (especially in BC) is basic – it does not automatically leverage historical trends or machine learning unless users adopt additional services. As one analysis noted, BC’s MRP/MPS tools don’t consider historical demand trends, requiring manual updates to forecasts and reorder points
dswius.com
. To bridge this, users often seek external forecasting apps or AI solutions
dswius.com
. In summary, advanced planning and forecasting capabilities are viewed as insufficient – representing an opportunity for ISVs to deliver smarter planning engines integrated with D365. 3. Shop-Floor Execution and Real-Time Visibility Gaps: Manufacturers increasingly require real-time production visibility and paperless execution on the shop floor. Dynamics 365 Supply Chain Management (Finance & Operations) does include a Production Floor Execution interface for shop-floor data entry, but some users still encounter gaps in execution features. (Notably, Microsoft recently had to enhance PFE to cover scenarios like recording quality test results and process manufacturing tasks that were previously unsupported
experience.dynamics.com
experience.dynamics.com
.) In the SMB space, Business Central has no native Manufacturing Execution System (MES) UI – operators must rely on manual posting or limited job modules. Real-time work-in-progress tracking often isn’t available out-of-the-box
dswius.com
. One industry blog noted that BC users “have to update their progress tracking manually” and that for true real-time visibility on the shop floor, pairing Business Central with a third-party MES app is necessary
dswius.com
. This reflects a broader trend: many manufacturers with advanced execution requirements integrate a specialized MES to supplement Dynamics 365
learn.microsoft.com
. Microsoft’s own documentation acknowledges that companies with complex shop-floor needs often choose third-party MES solutions tailored to their industry
learn.microsoft.com
. Pain points driving this include the need for features like machine integration (IIoT sensor data), real-time production dashboards, automated data capture (scanning, PLC integration), and downtime tracking – which core D365 may not fully provide. The lack of a built-in, industry-specific MES means manufacturers must invest in custom integrations to connect machine data and shop-floor events back to Dynamics. Clearly, there is a gap for more seamless real-time execution and IIoT integration in the D365 ecosystem. 4. Quality, Compliance, and Reporting Challenges: Ensuring quality control and regulatory compliance is vital for global manufacturers, yet users report that Dynamics 365 can leave them wanting in these areas. For quality management, Dynamics 365 does include quality orders and basic tracking, but until recently it lacked the ability for shop-floor workers to input test results directly in the production interface (this feature was only added in a recent release)
experience.dynamics.com
experience.dynamics.com
. Compliance and reporting is another weak spot: Dynamics 365 provides strong financial reports, but it does not include many specialized compliance reports (tax filings, OSHA/environmental reports, labor law reports) by default
dswius.com
. Manufacturing companies operating in multiple countries or under strict regulations often find they must build custom reports or purchase add-ons for these needs. This extends to product compliance and traceability (e.g. lot genealogy beyond basics, REACH/ROHS reporting, etc.), which may not be fully covered out-of-box. Users also point out that built-in reporting in D365 (especially complex SSRS reports for finance or inventory) can suffer performance issues
velosio.com
. One partner noted that clients often complain about slow performance of standard reports like aging or inventory balances, sometimes requiring customizations or offloading to Power BI
velosio.com
velosio.com
. Indeed, multiple users express frustration with Dynamics 365’s native reporting and analytics tools. On an online forum, a manufacturing user described the difficulty of getting useful data out of D365 without external BI tools, lamenting that “its reliance on Power BI is too much to make reports because it can’t make its own” reports adequately
reddit.com
. Others have echoed that sentiment, noting that extracting data for analysis (e.g. copying ERP data to a warehouse) is cumbersome. Microsoft’s evolving strategies (Entity store, BYOD, Azure Data Lake export, etc.) have changed frequently, causing confusion. As one Reddit user ranted, “simple data extraction is made an impossible task” – first OData feeds, then a “BYOD” SQL export (which was inefficient), then an export to Data Lake, and now new Azure Synapse/Fabric approaches, with “no good solution in place that satisfies anyone” over years of changes
reddit.com
. This illustrates a clear pain point: manufacturers want easier, faster reporting and analytics from their ERP data. The current gaps in quality/compliance features and the effort needed to get actionable intelligence represent opportunities for improvement. 5. Integration Obstacles (PLM, CAD, and Others): Manufacturing enterprises rarely operate Dynamics 365 in a vacuum – they need it to communicate with many specialized systems (Product Lifecycle Management, plant control systems, EDI with customers, etc.). Users have identified integration with PLM (Product Lifecycle Management) systems as a significant challenge. Engineering departments manage product designs and BOMs in PLM software, and syncing that with D365 ERP for production is often clunky without custom tools. For example, out-of-the-box Dynamics 365 (Finance & Operations) did not support engineering product versioning until the recent Engineering Change Management add-in was enabled, meaning that without ECM, “a standard Dynamics 365 ERP does not support product data versioning by default”
staedean.com
. Before Microsoft introduced that feature, companies had to build custom solutions to handle version-controlled BOMs from PLM. Even with ECM, setting up a seamless PLM-ERP link can be complex. Common issues include mismatched data models, BOM inconsistencies, and manual data transfer that leads to errors
staedean.com
staedean.com
. A manufacturing tech firm noted that without proper integration, teams face “cumbersome manual data transfers” and “misaligned BOMs” between engineering and production, causing procurement mistakes and delays
staedean.com
staedean.com
. Clearly, the lack of an easy, out-of-the-box PLM connector for Dynamics 365 is a pain point – one that often requires an ISV solution or custom middleware. Aside from PLM, integration with shop-floor equipment and IoT sensors (to feed machine telemetry into D365) is another area where customers see gaps. While Azure IoT and Power Platform tools exist, many users need more turnkey solutions to connect legacy machines or to implement predictive maintenance tied to D365 Asset Management. Finally, electronic data interchange (EDI) with partners (for orders, ASNs, etc.) is typically not native in D365, so manufacturers must rely on third-party EDI solutions – indicating yet another integration domain where an ISV’s involvement is standard. In summary, integration is a recurring headache, and manufacturers consistently seek better ways to connect Dynamics 365 with external systems (PLM, MES/SCADA, EDI, etc.) to achieve a unified workflow. 6. Usability and Adoption Issues: Even when Dynamics 365 has the required functionality, users often struggle with complexity and user experience on the manufacturing side. Feedback highlights a steep learning curve for new users and an interface that can be non-intuitive for shop-floor or warehouse personnel. In comparative reviews, Dynamics 365’s interface is described as “overwhelming and hard to navigate at first,” and many analytics dashboards “are not as intuitive as their competitors”
synodus.com
. This can hinder user adoption on the factory floor, where simplicity and clarity are key. It’s telling that one frustrated Business Central user exclaimed, “I’ve never felt like tossing my laptop out the window as much as I do while working in BC”, pointing to clunky experiences
reddit.com
. Training needs are significant – without proper training, teams underutilize the system or make errors, yet documentation and help resources can be hard to sift through (getting the right help guide “can be a pain” as noted in reviews)
synodus.com
. Moreover, some manufacturing users feel that too much functionality is hidden behind customizations and coding, putting it out of reach for non-technical staff. The ability to easily tweak forms, reports, or logic is valued, but if done improperly it leads to performance issues or upgrade headaches. The bottom line is that many manufacturing organizations find Dynamics 365 powerful but not user-friendly – they desire more streamlined, role-specific interfaces (for example, a production supervisor cockpit or machine operator touch-friendly screen) and better guided processes. This lack of user-centric design in certain areas (especially compared to niche manufacturing software) is a gap that could be addressed by targeted solutions or UX improvements.
ISV Product Opportunities to Bridge the Gaps
The pain points above point to high-demand opportunities for ISV solutions that extend Dynamics 365 in the manufacturing domain. Independent software vendors can create add-ons or integrated products to fill these functional gaps and improve workflows. Below is a set of innovative ISV product ideas, each mapped to specific unmet needs and customer demand. These ideas prioritize areas where user interest is high but current Dynamics 365 capabilities or available solutions are limited:
Process Manufacturing Enhancements Suite: An ISV solution that adds robust process manufacturing features to Dynamics 365, particularly Business Central. This could include multi-output batch orders (true co-products and by-products), actual vs. expected yield tracking, and formula/recipe management with version control. Given that BC currently “simply can’t provide” multi-output batch handling and struggles with process industries
vicinitysoftware.com
, an add-on here would address a major gap for food, chemical, and pharma manufacturers. The suite could also enable site-specific formulas (to handle the multi-facility formula variation issue) and incorporate quality controls specific to batch production. Value: Drastically reduces the need for customizing BC for process manufacturing, allowing midsize batch manufacturers to use Dynamics 365 without compromise. Target users: process manufacturers (chemicals, food & beverage, pharmaceuticals) on Dynamics 365 Business Central (or even those on Finance & Ops who need extra batch analytics).
Multi-Site Production Planning Module: A planning extension that allows truly integrated multi-site manufacturing in Dynamics 365 Business Central. This module would enable a sales order in one location to trigger production or fulfillment from another plant automatically – essentially providing the “true multisite manufacturing” logic that BC lacks
community.dynamics.com
. It would manage inter-site transfers, alternate production sites for the same item, and consolidated resource planning across facilities. Value: Helps growing manufacturers coordinate production across multiple factories without workarounds, improving supply chain efficiency. Target users: Any Dynamics 365 BC customer with multiple production sites or distribution centers (e.g. companies expanding globally or via acquisitions).
Advanced Scheduling & Finite Capacity Optimizer: An AI-powered scheduling add-on that integrates with Dynamics 365 to provide advanced production scheduling, finite capacity planning, and sequence optimization. It would use intelligent algorithms to schedule jobs based on machine/workcenter capacities, minimize changeovers, and respect delivery deadlines – features beyond D365’s standard MRP. Since BC “assumes infinite capacity” natively
dswius.com
 and even F&O’s scheduling may not optimize sequences, this tool addresses the need for better scheduling noted by many users. It could present an interactive Gantt chart for planners and automatically feed optimized schedules back into D365. Value: Increases throughput and on-time delivery by optimizing production schedules, reducing manual planner effort. Target users: Medium to large manufacturers on any Dynamics 365 ERP module (both BC and Supply Chain) who have complex scheduling needs (e.g. custom job shops, equipment-heavy plants, automotive suppliers, etc.).
Lean Manufacturing & Kanban App: A specialized ISV app to bring lean production capabilities into Dynamics 365 (particularly BC). This would introduce Kanban board visualization of workflows, electronic Kanban signals integrated with inventory, and support for pull-based replenishment and production leveling. Given that Business Central “does not support Kanban... workflows” out of the box
dswius.com
, this add-on would fill that void for companies practicing lean. Features could include bin-level Kanban card scanning via mobile devices, supermarket inventory management, and heijunka scheduling. Value: Allows manufacturers to implement lean techniques (reducing WIP and stock) within their D365 system, rather than managing Kanban manually or separately. Target users: Discrete manufacturers (electronics, automotive, machinery) using Dynamics 365 who are adopting lean manufacturing or Toyota Production System methods.
Manufacturing Execution & IIoT Platform: A third-party MES platform designed to plug into Dynamics 365, providing real-time shop floor execution, data collection, and IoT integration. This solution would offer a modern shop-floor interface (e.g. touch-screen terminals for operators or a tablet app) that syncs with D365 production orders and routes. It would capture production progress, downtime, and labor/machine hours in real time, and could connect to IoT sensors/PLC devices on machines for automatic data feeds (e.g. machine cycle counts, temperatures). Microsoft notes that many firms with advanced needs choose a third-party MES
learn.microsoft.com
, so there is proven demand. A tight integration (possibly leveraging D365’s new MES API endpoints) would ensure near real-time data flow – for example, material consumption recorded by the MES immediately updates D365 inventory
learn.microsoft.com
learn.microsoft.com
. Value: Enhances visibility and responsiveness – supervisors get live production dashboards, and data entry errors drop. It effectively turns Dynamics 365 into a more factory-aware system without the cost of a full bespoke MES. Target users: Larger manufacturers on Dynamics 365 Supply Chain (F&O) who require shop-floor control or any BC customers who currently track production manually. Industries like automotive, industrial equipment, and high-volume assembly would benefit greatly.
Quality & Compliance Management Add-On: An ISV product focusing on quality assurance and regulatory compliance features that complement Dynamics 365. This could extend the Quality management in D365 by enabling shop-floor input of test results (if not already available in the user’s version) and providing statistical process control (SPC) analysis of production data. Additionally, it would offer libraries of compliance reports and templates – for example, OSHA incident logs, ISO 9001 quality audit reports, environmental emissions tracking linked to production batches, or country-specific tax and trade compliance documents. Since “specific compliance reports... are not included by default” in D365
dswius.com
, an app that offers ready-made compliance solutions would save customers significant effort. It could also track employee training/certifications for compliance and link with production (addressing workforce safety and skill compliance in operations). Value: Gives manufacturers confidence that they can meet industry and government requirements using their ERP system, avoiding penalties and ensuring product quality. Target users: Highly regulated manufacturing sectors – e.g. food and beverage (with FDA/food safety reporting needs), pharmaceuticals (compliance and electronic batch records), aerospace/defense (traceability and ITAR compliance), and any multi-national manufacturer dealing with varied regulations.
PLM-to-Dynamics 365 Integration Connector: A turnkey integration solution that seamlessly connects popular PLM or CAD systems with Dynamics 365 Supply Chain Management. This connector would synchronize item master data, BOMs, and engineering changes from systems like Siemens Teamcenter, PTC Windchill, or Autodesk Vault directly into D365’s product data. It would handle product version/revision mappings (leveraging the Engineering Change Management in D365 where available) so that “disconnected PLM and ERP” scenarios – which cause BOM errors and manual effort – are eliminated
staedean.com
staedean.com
. By providing an officially supported integration, it would address the common challenge that 89% of companies face with data silos and integration struggles
staedean.com
. Features might include: bi-directional change notifications (so ERP knows of new revisions and PLM gets production cost feedback), configurable mapping of custom attributes, and perhaps a portal for engineers and planners to collaborate on pending changes. Value: Significantly reduces manual data entry and errors in transferring designs to production, speeding up new product introductions and engineering change implementation. Target users: Manufacturing firms that use dedicated PLM software alongside Dynamics 365 – typically mid-to-large companies in sectors like industrial equipment, electronics, automotive, and aerospace.
AI-Driven Demand Planning & Inventory Optimization: A cloud-based intelligence module that works with Dynamics 365 data to improve forecasting and inventory management. This would leverage machine learning on historical sales, seasonality, and external signals (market trends, maybe even social sentiment or economic indicators) to produce more accurate demand forecasts than the standard D365 tools. Microsoft’s own supply chain module is starting to use AI for forecasting
msdynamicsworld.com
, but many users are still on older processes (spreadsheets or simplistic forecasts). An ISV solution could provide a more user-friendly and robust forecasting experience, with scenario simulations (best-case, worst-case demand) and automatic feedback loops to D365’s production and procurement plans. It could also optimize safety stock and reorder points dynamically, addressing the noted issue that in D365, reorder parameters are static and must be manually updated
dswius.com
. With manufacturers facing rapid market changes, this kind of tool is in high demand. Value: Helps companies reduce stockouts and overstock by aligning production/supply with a smarter forecast, ultimately cutting inventory costs and improving service levels. Target users: Any manufacturer or distributor using Dynamics 365 who experiences demand volatility – e.g. consumer goods makers, seasonal product companies, or those with large SKU portfolios requiring sophisticated planning.
Enhanced Analytics & Reporting Pack for Manufacturing: A plug-and-play analytics solution that sits on top of Dynamics 365 data to deliver intuitive, pre-built dashboards and reports tailored for manufacturing operations. Given frequent complaints about D365’s reporting (e.g. “many analytics dashboards are not as intuitive”
synodus.com
 and difficulties extracting data), this ISV solution would provide a user-friendly analytics layer. It could use a modern BI tool (Power BI, Tableau, etc.) but come with preconfigured content: operational KPIs like OEE (Overall Equipment Effectiveness), yield trends, production throughput by line, late order analyses, etc., all drawing from D365 tables. The key innovation would be simplifying data extraction – perhaps using a managed data lake or warehouse behind the scenes – so that end-users don’t have to wrestle with OData or replication themselves. One could even envision a “reporting accelerator” that manages the export of D365 data in near real-time to a SQL database or cloud warehouse, given the pain expressed about Microsoft’s own solutions in this area
reddit.com
. By providing this out-of-the-box, the ISV saves customers from reinventing the wheel or enduring the “no good solution for years” frustration. Value: Empowers manufacturing managers with visibility and insights immediately, without needing a data scientist – they can identify bottlenecks, track costs, and make decisions with confidence. It also alleviates performance load on the transactional system by handling analytics externally. Target users: Operations and production managers in any Dynamics 365-using manufacturing company, especially those who lack a dedicated IT/BI team. This is broadly useful across industries (from heavy manufacturing to consumer goods) since nearly all need better analytics.
User Experience (UX) Improvement Toolkit: While not a traditional “module,” an ISV offering here could greatly help adoption. This toolkit might include an in-application training and guided help system specifically for Dynamics 365 manufacturing processes. For example, an overlay that provides step-by-step instructions or tooltips as a user moves through tasks like reporting production output or running MRP – addressing the complaint that “finding the right instruction guide can be a pain”
synodus.com
. It could also offer simplified screens for common roles (e.g. a tailored production scheduler workspace or a warehouse shipping interface) to hide complexity. Additionally, mobile-friendly mini-apps for simple tasks (like logging production quantities or performing cycle counts) could be part of it, improving usability for shop-floor workers. Value: This directly targets the “soft” but significant gap of user adoption. Smoother usability means fewer errors and less resistance to using the system as intended, which in turn leads to better data and ROI from Dynamics 365. Target users: Any Dynamics 365 customer (both BC and F&O) that is deploying to a wide base of end-users, particularly in warehouse or production roles where staff may not be tech-savvy. It’s especially relevant to new implementations or companies with high employee turnover, where continuous training is needed.
Each of these ideas corresponds to pain points voiced by the Dynamics manufacturing community. By addressing what customers wish Dynamics 365 would do (but currently doesn’t, or doesn’t do well), ISVs can add tremendous value. Below is a summary table of the proposed ISV product ideas, highlighting their value and intended audience:
Proposed ISV Solution	Gap/Pain Point Addressed	Potential Value & Target Users
Process Manufacturing Add-On Suite	Missing batch/process capabilities in D365 (recipes, co-products, multi-output, yield variance)
vicinitysoftware.com
vicinitysoftware.com
. Especially in Business Central.	Enables formula-based manufacturers (food, chemical, pharma) to use D365 without heavy customization. Value: supports multiple outputs and variable yields, multi-formula by site – critical for process industries. Target users: Process manufacturers on Dynamics 365 (primarily BC) who need full batch production support.
Multi-Site Production Planning Module	Lack of true multi-plant planning in BC (no automatic cross-site production or transfers)
community.dynamics.com
vicinitysoftware.com
.	Provides centralized planning across facilities – e.g. auto-create production orders at Plant A for orders taken at Plant B. Value: optimizes resource use across global factories, reduces manual planning. Target users: Growing manufacturers on D365 Business Central with multiple plants or distribution centers.
Advanced Scheduling & APS Optimizer	Basic scheduling/MRP doesn’t handle finite capacity or optimized sequencing (leading to overtime or bottlenecks).	Introduces AI/finite scheduling that respects capacity and optimizes production order sequence. Value: higher throughput, lower downtime/costs. Target users: Mid-large D365 users (BC or F&O) needing complex production scheduling (e.g. automotive, machinery, job shops).
Lean/Kanban Manufacturing App	No built-in Kanban/lean execution in standard D365 (especially BC)
dswius.com
.	Adds Kanban boards, electronic signals, and lean metrics integrated with D365. Value: supports Just-in-Time production and inventory reduction initiatives. Target users: Discrete manufacturers using Dynamics 365 who are implementing lean manufacturing practices.
Integrated MES & Shop-Floor IIoT Platform	Need for real-time shop-floor data capture and machine integration (native D365 MES features are limited)
learn.microsoft.com
dswius.com
.	Offers a live Manufacturing Execution System that syncs with D365 (production order updates, automated material consumption, IoT sensor inputs). Value: real-time visibility and control, less manual data entry, improved OEE. Target users: Large or complex manufacturers on D365 (F&O or BC) looking for shop-floor control (e.g. automotive, industrial equipment, electronics assembly).
Quality & Compliance Management Extension	Gaps in quality data entry on the floor and lack of compliance reports out-of-box
dswius.com
.	Provides tools for recording quality inspections in production and generates industry/government compliance reports (safety, environmental, etc.) automatically from D365 data. Value: ensures regulatory requirements are met and quality issues are caught early. Target users: Regulated manufacturers (food/bev, pharma, aerospace) on Dynamics 365 needing enhanced QA and compliance tracking.
PLM/CAD to Dynamics 365 Connector	Difficult integration between engineering (PLM/CAD) and D365 ERP (manual BOM updates, no version tracking)
staedean.com
staedean.com
.	Seamlessly syncs product designs, BOMs, and engineering changes from PLM software into D365 (with version control and change management). Value: eliminates duplicate data entry and BOM errors, speeding up product launches. Target users: Manufacturers with separate PLM or CAD systems (high-tech, automotive, industrial) using D365 Finance/Supply Chain.
AI-Powered Demand Forecasting & Planning	Standard D365 forecasting is simplistic – doesn’t use AI or rich data, requiring manual adjustments
dswius.com
.	Uses machine learning on historical sales, market data to predict demand and automatically adjust planning parameters in D365. Value: improves forecast accuracy and inventory optimization, reducing stockouts and excess. Target users: Any D365-using manufacturer or distributor facing demand volatility (consumer goods, seasonal products, etc.).
Manufacturing Analytics & Reporting Pack	Difficulty getting actionable reports from D365; performance issues and need for external BI
reddit.com
reddit.com
.	Pre-built BI dashboards/KPIs for production, inventory, and delivery performance, fed by an automated D365 data pipeline. Value: immediate insight for managers without IT overhead, and faster reporting (solves “slow or no reports” complaint). Target users: Operations managers and executives in D365-enabled manufacturing firms who need better visibility (broadly applicable across industries).
User Experience & Training Improvement Toolkit	Steep learning curve and usability complaints (complex UI, hard to find help)
synodus.com
.	In-app guided tutorials, simplified role-based screens, and context-sensitive help for D365 manufacturing functions. Value: boosts user adoption and accuracy by making the system easier to navigate for shop-floor and warehouse users. Target users: Companies implementing Dynamics 365 in manufacturing environments with many end-users (especially where user-friendliness is crucial for success).
Conclusion
Dynamics 365 is a powerful platform for manufacturing enterprises, but as real user experiences show, it does not yet satisfy all industry needs out-of-the-box. Key gaps – from multi-site production planning and process manufacturing functionality to advanced scheduling, MES integration, and ease of reporting – have created pain points for many companies. Fortunately, each gap represents an opportunity for innovation. The ISV product ideas outlined above focus on high-demand areas where manufacturers are actively seeking solutions. By developing add-ons that integrate seamlessly with Dynamics 365, ISVs can empower companies to overcome these challenges without switching systems. The benefit is twofold: manufacturers get more value from their Dynamics investment (with workflows tailored to their needs), and ISVs tap into underserved niches with significant market demand. Feedback from forums, case studies, and reviews makes it clear that the manufacturing community is eager for these improvements – whether it’s a smoother way to get data out of the system, or a module that finally allows true multi-plant scheduling. In summary, bridging these gaps with targeted ISV solutions will not only alleviate current customer pain points
reddit.com
dswius.com
, but also accelerate Dynamics 365’s adoption as a comprehensive manufacturing platform. By listening to user needs and prioritizing the most impactful enhancements, ISVs and Microsoft partners can turn these pain points into opportunities – delivering a more agile, efficient, and user-friendly Dynamics 365 experience for manufacturers worldwide. Sources: User community forums, Dynamics 365 user feedback and idea lists, industry partner blogs, and case studies were analyzed to compile the above insights. Key references include Microsoft’s own documentation and release notes on manufacturing features (for context on supported vs. missing capabilities), as well as firsthand user commentary from Dynamics forums and Reddit (illustrating day-to-day frustrations)
reddit.com
synodus.com
. Partner solution blogs (e.g. Vicinity, DSWi) and independent reviews provided additional evidence of gaps in areas like process manufacturing, multi-site, and analytics
vicinitysoftware.com
dswius.com
. These diverse sources consistently highlight the gaps – and confirm that addressing them would bring substantial value to the Dynamics 365 manufacturing community.
Citations
Dynamics Community Forum Thread Details

https://community.dynamics.com/forums/thread/details/?threadid=ee883793-3c0e-f011-9989-7c1e520dbb77

Two Roadblocks Process Manufacturers Will Discover with Microsoft Dynamics 365 Business Central Manufacturing - Vicinity Software

https://vicinitysoftware.com/blog/two-roadblocks-process-manufacturers-will-discover-with-microsoft-dynamics-365-business-central-manufacturing/

Microsoft Dynamics 365 Business Central for Manufacturers

https://dswius.com/6-strengths-and-weaknesses-of-dynamics-365-business-central-for-manufacturing/

Two Roadblocks Process Manufacturers Will Discover with Microsoft Dynamics 365 Business Central Manufacturing - Vicinity Software

https://vicinitysoftware.com/blog/two-roadblocks-process-manufacturers-will-discover-with-microsoft-dynamics-365-business-central-manufacturing/

Two Roadblocks Process Manufacturers Will Discover with Microsoft Dynamics 365 Business Central Manufacturing - Vicinity Software

https://vicinitysoftware.com/blog/two-roadblocks-process-manufacturers-will-discover-with-microsoft-dynamics-365-business-central-manufacturing/

Two Roadblocks Process Manufacturers Will Discover with Microsoft Dynamics 365 Business Central Manufacturing - Vicinity Software

https://vicinitysoftware.com/blog/two-roadblocks-process-manufacturers-will-discover-with-microsoft-dynamics-365-business-central-manufacturing/

Microsoft Dynamics 365 Business Central for Manufacturers

https://dswius.com/6-strengths-and-weaknesses-of-dynamics-365-business-central-for-manufacturing/

Microsoft Dynamics 365 Business Central for Manufacturers

https://dswius.com/6-strengths-and-weaknesses-of-dynamics-365-business-central-for-manufacturing/

Ideas List

https://experience.dynamics.com/ideas/categories/list/?category=efc1769f-1105-e711-8107-5065f38a3bb1&forum=16691718-61e2-e611-8101-5065f38b21f1

Ideas List

https://experience.dynamics.com/ideas/categories/list/?category=efc1769f-1105-e711-8107-5065f38a3bb1&forum=16691718-61e2-e611-8101-5065f38b21f1

Microsoft Dynamics 365 Business Central for Manufacturers

https://dswius.com/6-strengths-and-weaknesses-of-dynamics-365-business-central-for-manufacturing/

Integrate with third-party manufacturing execution systems - Supply Chain Management | Dynamics 365 | Microsoft Learn

https://learn.microsoft.com/en-us/dynamics365/supply-chain/production-control/mes-integration

Ideas List

https://experience.dynamics.com/ideas/categories/list/?category=efc1769f-1105-e711-8107-5065f38a3bb1&forum=16691718-61e2-e611-8101-5065f38b21f1

Ideas List

https://experience.dynamics.com/ideas/categories/list/?category=efc1769f-1105-e711-8107-5065f38a3bb1&forum=16691718-61e2-e611-8101-5065f38b21f1

Microsoft Dynamics 365 Business Central for Manufacturers

https://dswius.com/6-strengths-and-weaknesses-of-dynamics-365-business-central-for-manufacturing/

Dynamics 365 Advantages & Disadvantages | Velosio

https://www.velosio.com/blog/advantages-disadvantages-of-dynamics-365/

Dynamics 365 Advantages & Disadvantages | Velosio

https://www.velosio.com/blog/advantages-disadvantages-of-dynamics-365/

Dynamics 365 Advantages & Disadvantages | Velosio

https://www.velosio.com/blog/advantages-disadvantages-of-dynamics-365/

To anyone considering switching to D365: Don't. It is the single worst ERP I have ever had the displeasure to work with. I despise every single aspect of this over-designed, slow, unfinished showcase of MS incompetence. : r/Dynamics365

https://www.reddit.com/r/Dynamics365/comments/zkw66s/to_anyone_considering_switching_to_d365_dont_it/

To anyone considering switching to D365: Don't. It is the single worst ERP I have ever had the displeasure to work with. I despise every single aspect of this over-designed, slow, unfinished showcase of MS incompetence. : r/Dynamics365

https://www.reddit.com/r/Dynamics365/comments/zkw66s/to_anyone_considering_switching_to_d365_dont_it/

PLM-Dynamics 365 ERP integration challenges and their solutions

https://staedean.com/manufacturing/blog/plm-dynamics-365-erp-integration-challenges-and-solutions

PLM-Dynamics 365 ERP integration challenges and their solutions

https://staedean.com/manufacturing/blog/plm-dynamics-365-erp-integration-challenges-and-solutions

PLM-Dynamics 365 ERP integration challenges and their solutions

https://staedean.com/manufacturing/blog/plm-dynamics-365-erp-integration-challenges-and-solutions

PLM-Dynamics 365 ERP integration challenges and their solutions

https://staedean.com/manufacturing/blog/plm-dynamics-365-erp-integration-challenges-and-solutions

Microsoft Dynamics 365: Collected reviews from users (pros & cons)

https://synodus.com/blog/low-code/dynamics-365/

To anyone considering switching to D365: Don't. It is the single worst ERP I have ever had the displeasure to work with. I despise every single aspect of this over-designed, slow, unfinished showcase of MS incompetence. : r/Dynamics365

https://www.reddit.com/r/Dynamics365/comments/zkw66s/to_anyone_considering_switching_to_d365_dont_it/

Microsoft Dynamics 365 Business Central for Manufacturers

https://dswius.com/6-strengths-and-weaknesses-of-dynamics-365-business-central-for-manufacturing/

Integrate with third-party manufacturing execution systems - Supply Chain Management | Dynamics 365 | Microsoft Learn

https://learn.microsoft.com/en-us/dynamics365/supply-chain/production-control/mes-integration

Integrate with third-party manufacturing execution systems - Supply Chain Management | Dynamics 365 | Microsoft Learn

https://learn.microsoft.com/en-us/dynamics365/supply-chain/production-control/mes-integration

PLM-Dynamics 365 ERP integration challenges and their solutions

https://staedean.com/manufacturing/blog/plm-dynamics-365-erp-integration-challenges-and-solutions
Bridging the Skills Gap: Deploying AI and IIoT via Dynamics 365 to Compensate for U.S. Manufacturing Labor Shortages  | MSDynamicsWorld.com

https://msdynamicsworld.com/blog-post/bridging-skills-gap-deploying-ai-and-iiot-dynamics-365-compensate-us-manufacturing-labor