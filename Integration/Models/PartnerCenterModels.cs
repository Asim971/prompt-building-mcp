using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace Dynamic360.Integration.PartnerCenter.Models
{
    /// <summary>
    /// Marketplace intelligence data from Partner Center API
    /// </summary>
    public class MarketplaceIntelligence
    {
        [JsonPropertyName("category")]
        public string Category { get; set; }

        [JsonPropertyName("totalMarketSize")]
        public decimal TotalMarketSize { get; set; }

        [JsonPropertyName("activeSolutions")]
        public int ActiveSolutions { get; set; }

        [JsonPropertyName("marketTrends")]
        public List<TrendData> MarketTrends { get; set; } = new();

        [JsonPropertyName("identifiedGaps")]
        public List<OpportunityGap> IdentifiedGaps { get; set; } = new();

        [JsonPropertyName("customerDemand")]
        public CustomerDemandData CustomerDemand { get; set; }

        [JsonPropertyName("lastUpdated")]
        public DateTime LastUpdated { get; set; }
    }

    /// <summary>
    /// Market trend analysis data
    /// </summary>
    public class TrendData
    {
        [JsonPropertyName("trendName")]
        public string TrendName { get; set; }

        [JsonPropertyName("growthRate")]
        public decimal GrowthRate { get; set; }

        [JsonPropertyName("confidence")]
        public decimal Confidence { get; set; }

        [JsonPropertyName("timeframe")]
        public string Timeframe { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }
    }

    /// <summary>
    /// Identified market opportunity gap
    /// </summary>
    public class OpportunityGap
    {
        [JsonPropertyName("gapName")]
        public string GapName { get; set; }

        [JsonPropertyName("marketSize")]
        public decimal MarketSize { get; set; }

        [JsonPropertyName("difficulty")]
        public string Difficulty { get; set; }

        [JsonPropertyName("timeToMarket")]
        public int TimeToMarketMonths { get; set; }

        [JsonPropertyName("competitionLevel")]
        public string CompetitionLevel { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }
    }

    /// <summary>
    /// Customer demand analysis data
    /// </summary>
    public class CustomerDemandData
    {
        [JsonPropertyName("totalCustomers")]
        public int TotalCustomers { get; set; }

        [JsonPropertyName("averageSpend")]
        public decimal AverageSpend { get; set; }

        [JsonPropertyName("demandScore")]
        public decimal DemandScore { get; set; }

        [JsonPropertyName("growthProjection")]
        public decimal GrowthProjection { get; set; }

        [JsonPropertyName("topRequests")]
        public List<string> TopRequests { get; set; } = new();
    }

    /// <summary>
    /// Competitive analysis results
    /// </summary>
    public class CompetitiveAnalysis
    {
        [JsonPropertyName("solutionCategory")]
        public string SolutionCategory { get; set; }

        [JsonPropertyName("topCompetitors")]
        public List<CompetitorSolution> TopCompetitors { get; set; } = new();

        [JsonPropertyName("pricingLandscape")]
        public PricingAnalysis PricingLandscape { get; set; }

        [JsonPropertyName("opportunities")]
        public List<DifferentiationOpportunity> Opportunities { get; set; } = new();

        [JsonPropertyName("recommendedPositioning")]
        public MarketPositioning RecommendedPositioning { get; set; }

        [JsonPropertyName("marketShare")]
        public MarketShareData MarketShare { get; set; }
    }

    /// <summary>
    /// Competitor solution information
    /// </summary>
    public class CompetitorSolution
    {
        [JsonPropertyName("companyName")]
        public string CompanyName { get; set; }

        [JsonPropertyName("solutionName")]
        public string SolutionName { get; set; }

        [JsonPropertyName("marketShare")]
        public decimal MarketShare { get; set; }

        [JsonPropertyName("pricingTier")]
        public string PricingTier { get; set; }

        [JsonPropertyName("keyFeatures")]
        public List<string> KeyFeatures { get; set; } = new();

        [JsonPropertyName("customerRating")]
        public decimal CustomerRating { get; set; }

        [JsonPropertyName("strengths")]
        public List<string> Strengths { get; set; } = new();

        [JsonPropertyName("weaknesses")]
        public List<string> Weaknesses { get; set; } = new();
    }

    /// <summary>
    /// Market positioning recommendations
    /// </summary>
    public class MarketPositioning
    {
        [JsonPropertyName("recommendedPosition")]
        public string RecommendedPosition { get; set; }

        [JsonPropertyName("keyDifferentiators")]
        public List<string> KeyDifferentiators { get; set; } = new();

        [JsonPropertyName("targetCustomerSegment")]
        public string TargetCustomerSegment { get; set; }

        [JsonPropertyName("messagingStrategy")]
        public string MessagingStrategy { get; set; }

        [JsonPropertyName("competitiveAdvantages")]
        public List<string> CompetitiveAdvantages { get; set; } = new();
    }

    /// <summary>
    /// Market share analysis data
    /// </summary>
    public class MarketShareData
    {
        [JsonPropertyName("totalMarketSize")]
        public decimal TotalMarketSize { get; set; }

        [JsonPropertyName("topPlayerShare")]
        public decimal TopPlayerShare { get; set; }

        [JsonPropertyName("fragmentationLevel")]
        public string FragmentationLevel { get; set; }

        [JsonPropertyName("growthRate")]
        public decimal GrowthRate { get; set; }

        [JsonPropertyName("marketConcentration")]
        public string MarketConcentration { get; set; }
    }

    /// <summary>
    /// Microsoft Partner Program requirements
    /// </summary>
    public class PartnerProgramRequirements
    {
        [JsonPropertyName("programLevel")]
        public string ProgramLevel { get; set; }

        [JsonPropertyName("competencyRequirements")]
        public List<CompetencyRequirement> CompetencyRequirements { get; set; } = new();

        [JsonPropertyName("technicalRequirements")]
        public List<TechnicalRequirement> TechnicalRequirements { get; set; } = new();

        [JsonPropertyName("businessRequirements")]
        public List<BusinessRequirement> BusinessRequirements { get; set; } = new();

        [JsonPropertyName("benefits")]
        public List<PartnerBenefit> Benefits { get; set; } = new();

        [JsonPropertyName("lastUpdated")]
        public DateTime LastUpdated { get; set; }
    }

    /// <summary>
    /// Partner competency requirement
    /// </summary>
    public class CompetencyRequirement
    {
        [JsonPropertyName("competencyName")]
        public string CompetencyName { get; set; }

        [JsonPropertyName("level")]
        public string Level { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }

        [JsonPropertyName("validationMethod")]
        public string ValidationMethod { get; set; }

        [JsonPropertyName("renewalPeriod")]
        public int RenewalPeriodMonths { get; set; }
    }

    /// <summary>
    /// Technical requirement for partner program
    /// </summary>
    public class TechnicalRequirement
    {
        [JsonPropertyName("requirementName")]
        public string RequirementName { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }

        [JsonPropertyName("mandatory")]
        public bool Mandatory { get; set; }

        [JsonPropertyName("validationCriteria")]
        public List<string> ValidationCriteria { get; set; } = new();
    }

    /// <summary>
    /// Business requirement for partner program
    /// </summary>
    public class BusinessRequirement
    {
        [JsonPropertyName("requirementName")]
        public string RequirementName { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }

        [JsonPropertyName("threshold")]
        public string Threshold { get; set; }

        [JsonPropertyName("measurementPeriod")]
        public string MeasurementPeriod { get; set; }
    }

    /// <summary>
    /// Partner program benefit
    /// </summary>
    public class PartnerBenefit
    {
        [JsonPropertyName("benefitName")]
        public string BenefitName { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }

        [JsonPropertyName("value")]
        public string Value { get; set; }

        [JsonPropertyName("eligibilityLevel")]
        public string EligibilityLevel { get; set; }
    }

    /// <summary>
    /// AppSource compliance validation result
    /// </summary>
    public class AppSourceComplianceResult
    {
        [JsonPropertyName("isCompliant")]
        public bool IsCompliant { get; set; }

        [JsonPropertyName("complianceScore")]
        public decimal ComplianceScore { get; set; }

        [JsonPropertyName("validationResults")]
        public List<ValidationResult> ValidationResults { get; set; } = new();

        [JsonPropertyName("requiredActions")]
        public List<RequiredAction> RequiredActions { get; set; } = new();

        [JsonPropertyName("certificationStatus")]
        public string CertificationStatus { get; set; }

        [JsonPropertyName("validatedOn")]
        public DateTime ValidatedOn { get; set; }
    }

    /// <summary>
    /// Individual validation result
    /// </summary>
    public class ValidationResult
    {
        [JsonPropertyName("criteriaName")]
        public string CriteriaName { get; set; }

        [JsonPropertyName("status")]
        public string Status { get; set; }

        [JsonPropertyName("score")]
        public decimal Score { get; set; }

        [JsonPropertyName("feedback")]
        public string Feedback { get; set; }

        [JsonPropertyName("priority")]
        public string Priority { get; set; }
    }

    /// <summary>
    /// Required action for compliance
    /// </summary>
    public class RequiredAction
    {
        [JsonPropertyName("actionName")]
        public string ActionName { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }

        [JsonPropertyName("priority")]
        public string Priority { get; set; }

        [JsonPropertyName("estimatedEffort")]
        public string EstimatedEffort { get; set; }

        [JsonPropertyName("deadline")]
        public DateTime? Deadline { get; set; }
    }

    /// <summary>
    /// D365 ecosystem updates
    /// </summary>
    public class D365EcosystemUpdates
    {
        [JsonPropertyName("newFeatures")]
        public List<FeatureUpdate> NewFeatures { get; set; } = new();

        [JsonPropertyName("apiChanges")]
        public List<ApiUpdate> ApiChanges { get; set; } = new();

        [JsonPropertyName("integrationPatterns")]
        public List<IntegrationPattern> IntegrationPatterns { get; set; } = new();

        [JsonPropertyName("manufacturingEnhancements")]
        public List<ManufacturingCapability> ManufacturingEnhancements { get; set; } = new();

        [JsonPropertyName("releaseDate")]
        public DateTime ReleaseDate { get; set; }

        [JsonPropertyName("releaseWave")]
        public string ReleaseWave { get; set; }

        [JsonPropertyName("impactAssessment")]
        public string ImpactAssessment { get; set; }
    }

    /// <summary>
    /// Feature update information
    /// </summary>
    public class FeatureUpdate
    {
        [JsonPropertyName("featureName")]
        public string FeatureName { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }

        [JsonPropertyName("module")]
        public string Module { get; set; }

        [JsonPropertyName("availabilityDate")]
        public DateTime AvailabilityDate { get; set; }

        [JsonPropertyName("impactLevel")]
        public string ImpactLevel { get; set; }

        [JsonPropertyName("isvOpportunity")]
        public string IsvOpportunity { get; set; }
    }

    /// <summary>
    /// API update information
    /// </summary>
    public class ApiUpdate
    {
        [JsonPropertyName("apiName")]
        public string ApiName { get; set; }

        [JsonPropertyName("changeType")]
        public string ChangeType { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }

        [JsonPropertyName("version")]
        public string Version { get; set; }

        [JsonPropertyName("deprecationDate")]
        public DateTime? DeprecationDate { get; set; }

        [JsonPropertyName("migrationGuidance")]
        public string MigrationGuidance { get; set; }
    }

    /// <summary>
    /// Integration pattern information
    /// </summary>
    public class IntegrationPattern
    {
        [JsonPropertyName("patternName")]
        public string PatternName { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }

        [JsonPropertyName("useCase")]
        public string UseCase { get; set; }

        [JsonPropertyName("implementation")]
        public string Implementation { get; set; }

        [JsonPropertyName("benefits")]
        public List<string> Benefits { get; set; } = new();
    }

    /// <summary>
    /// Manufacturing capability enhancement
    /// </summary>
    public class ManufacturingCapability
    {
        [JsonPropertyName("capabilityName")]
        public string CapabilityName { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }

        [JsonPropertyName("industryAlignment")]
        public List<string> IndustryAlignment { get; set; } = new();

        [JsonPropertyName("integrationComplexity")]
        public string IntegrationComplexity { get; set; }

        [JsonPropertyName("businessValue")]
        public string BusinessValue { get; set; }
    }

    /// <summary>
    /// Enhanced research analysis result
    /// </summary>
    public class EnhancedResearchResult
    {
        public Dictionary<string, object> BaseAnalysis { get; set; }
        public MarketplaceIntelligence MarketIntelligence { get; set; }
        public CompetitiveAnalysis CompetitiveAnalysis { get; set; }
        public D365EcosystemUpdates EcosystemUpdates { get; set; }
        public DateTime EnhancementTimestamp { get; set; }
        public string DataFreshness { get; set; }
        public decimal QualityScore { get; set; }
    }

    /// <summary>
    /// Enhanced PRD result
    /// </summary>
    public class EnhancedPRDResult
    {
        public Dictionary<string, object> BasePRD { get; set; }
        public AppSourceComplianceResult ComplianceValidation { get; set; }
        public PricingBenchmarks PricingBenchmarks { get; set; }
        public RevenueProjections RevenueProjections { get; set; }
        public DateTime EnhancementTimestamp { get; set; }
        public string DataFreshness { get; set; }
        public decimal QualityScore { get; set; }
    }

    /// <summary>
    /// Pricing benchmarks data
    /// </summary>
    public class PricingBenchmarks
    {
        [JsonPropertyName("category")]
        public string Category { get; set; }

        [JsonPropertyName("pricingTiers")]
        public List<PricingTier> PricingTiers { get; set; } = new();

        [JsonPropertyName("averagePrice")]
        public decimal AveragePrice { get; set; }

        [JsonPropertyName("pricingModel")]
        public string PricingModel { get; set; }

        [JsonPropertyName("marketPosition")]
        public string MarketPosition { get; set; }
    }

    /// <summary>
    /// Pricing tier information
    /// </summary>
    public class PricingTier
    {
        [JsonPropertyName("tierName")]
        public string TierName { get; set; }

        [JsonPropertyName("priceRange")]
        public PriceRange PriceRange { get; set; }

        [JsonPropertyName("features")]
        public List<string> Features { get; set; } = new();

        [JsonPropertyName("marketShare")]
        public decimal MarketShare { get; set; }
    }

    /// <summary>
    /// Price range information
    /// </summary>
    public class PriceRange
    {
        [JsonPropertyName("minimum")]
        public decimal Minimum { get; set; }

        [JsonPropertyName("maximum")]
        public decimal Maximum { get; set; }

        [JsonPropertyName("currency")]
        public string Currency { get; set; }

        [JsonPropertyName("billingPeriod")]
        public string BillingPeriod { get; set; }
    }

    /// <summary>
    /// Revenue projections data
    /// </summary>
    public class RevenueProjections
    {
        [JsonPropertyName("marketSegment")]
        public string MarketSegment { get; set; }

        [JsonPropertyName("projectionPeriod")]
        public string ProjectionPeriod { get; set; }

        [JsonPropertyName("peakAnnualRecurringRevenue")]
        public decimal PeakAnnualRecurringRevenue { get; set; }

        [JsonPropertyName("timeToBreakeven")]
        public int TimeToBreakevenMonths { get; set; }

        [JsonPropertyName("projectedCustomers")]
        public int ProjectedCustomers { get; set; }

        [JsonPropertyName("averageRevenuePerCustomer")]
        public decimal AverageRevenuePerCustomer { get; set; }

        [JsonPropertyName("confidenceLevel")]
        public decimal ConfidenceLevel { get; set; }

        [JsonPropertyName("scenarios")]
        public List<RevenueScenario> Scenarios { get; set; } = new();
    }

    /// <summary>
    /// Revenue scenario information
    /// </summary>
    public class RevenueScenario
    {
        [JsonPropertyName("scenarioName")]
        public string ScenarioName { get; set; }

        [JsonPropertyName("probability")]
        public decimal Probability { get; set; }

        [JsonPropertyName("revenueProjection")]
        public decimal RevenueProjection { get; set; }

        [JsonPropertyName("assumptions")]
        public List<string> Assumptions { get; set; } = new();
    }

    /// <summary>
    /// Pricing analysis information
    /// </summary>
    public class PricingAnalysis
    {
        [JsonPropertyName("averagePrice")]
        public decimal AveragePrice { get; set; }

        [JsonPropertyName("pricingSpread")]
        public decimal PricingSpread { get; set; }

        [JsonPropertyName("dominantModel")]
        public string DominantModel { get; set; }

        [JsonPropertyName("priceElasticity")]
        public decimal PriceElasticity { get; set; }
    }

    /// <summary>
    /// Differentiation opportunity
    /// </summary>
    public class DifferentiationOpportunity
    {
        [JsonPropertyName("opportunityName")]
        public string OpportunityName { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }

        [JsonPropertyName("marketPotential")]
        public decimal MarketPotential { get; set; }

        [JsonPropertyName("competitiveDifficulty")]
        public string CompetitiveDifficulty { get; set; }

        [JsonPropertyName("implementationComplexity")]
        public string ImplementationComplexity { get; set; }
    }
}