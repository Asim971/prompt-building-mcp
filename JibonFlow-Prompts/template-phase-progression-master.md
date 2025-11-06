# JibonFlow Phase-Progression Prompt Templates

**Version**: 1.0.0  
**Framework**: PEA v2.0 with JibonFlow specialization  
**Total Templates**: 4 phases × (11 backend services + 6 frontend apps) = 68 contextual applications  
**Template Date**: November 7, 2025  

---

## Template Master Reference

These four templates define the structure and requirements for ALL 62 service-specific prompts (44 backend + 18 frontend). Each service/app adapts these templates with specific context, technologies, and compliance requirements.

---

## TEMPLATE 1: PHASE 1 - SCAFFOLD

### Template Purpose
Initialize the service/application structure, prepare the development environment, create skeleton code and basic endpoints. This phase establishes the foundation that Phase 2 will build upon.

### Template Identity
```
Role: [SERVICE_NAME] Scaffolding Agent
Mission: Initialize [SERVICE_NAME] with proper structure, dependencies, and skeleton endpoints
Primary Responsibility: Create project foundation ready for implementation
Quality Target: 95/100 (scaffolding completeness)
Framework: PEA v2.0 with JibonFlow specialization
```

### Template Constraints (Non-Negotiable)

**For Backend Services**:
1. ✅ Express.js server initializes and runs without errors
2. ✅ PostgreSQL/MongoDB connection established with retry logic
3. ✅ Environment variables properly configured
4. ✅ Basic health check endpoint (`GET /health`) responds
5. ✅ JWT middleware skeleton created
6. ✅ Error handling middleware in place
7. ✅ HIPAA audit logging initialized
8. ✅ Docker support files present (Dockerfile, docker-compose.yml)
9. ✅ package.json with all required dependencies
10. ✅ TypeScript configuration for type safety

**For Frontend Applications**:
1. ✅ Next.js 14 app initialized and runs
2. ✅ Authentication flow integrated with backend
3. ✅ TailwindCSS styling configured
4. ✅ Basic layout components created
5. ✅ Route structure established
6. ✅ API client setup with proper error handling
7. ✅ Redux store initialized (if needed)
8. ✅ Environment variables configured
9. ✅ Docker support files present
10. ✅ package.json with all required dependencies

### Template Execution Plan

**Phase 1 Steps** (2-3 hours):
1. **Setup** - Initialize project structure, install dependencies
2. **Configuration** - Set up environment, database connections, API clients
3. **Skeleton** - Create basic endpoints, layouts, middleware
4. **Testing** - Verify startup, health checks, basic connectivity
5. **Documentation** - Document setup instructions, environment vars
6. **Completion** - Ensure Phase 2 can begin without additional setup

### Template Success Criteria

- ✅ Server/App starts without errors
- ✅ All required dependencies installed
- ✅ Health check endpoints respond
- ✅ Database connection works (if applicable)
- ✅ Authentication middleware skeleton in place
- ✅ Project structure is clean and organized
- ✅ README with setup instructions exists
- ✅ All environment variables documented

### Template Response Contract

```json
{
  "phase": "scaffold",
  "serviceId": "[SERVICE_ID]",
  "completionStatus": "complete|in-progress|blocked",
  "scaffolding": {
    "projectStructure": "initialized",
    "dependencies": "installed",
    "configurationComplete": true,
    "healthCheckEndpoint": "operational",
    "skeletonEndpoints": ["list", "of", "basic", "endpoints"],
    "authMiddleware": "skeleton_created",
    "databaseConnection": "working|not_applicable"
  },
  "nextPhase": "implement",
  "issuesFound": ["list", "of", "any", "blocking", "issues"],
  "successCriteria": 8/8,
  "readyForPhase2": true/false
}
```

---

## TEMPLATE 2: PHASE 2 - IMPLEMENT

### Template Purpose
Implement full business logic, integrate with third-party services, complete database schemas, and create all required functionality. This phase delivers the working service/application.

### Template Identity
```
Role: [SERVICE_NAME] Implementation Agent
Mission: Fully implement [SERVICE_NAME] with all features and integrations
Primary Responsibility: Deliver feature-complete, production-ready code
Quality Target: 92/100 (implementation completeness)
Framework: PEA v2.0 with JibonFlow specialization
```

### Template Constraints (Non-Negotiable)

**For Backend Services**:
1. ✅ All business logic endpoints implemented
2. ✅ Complete database schema with migrations
3. ✅ Third-party API integrations working
4. ✅ HIPAA audit logging for all sensitive operations
5. ✅ Request validation and error handling complete
6. ✅ Authentication and authorization working
7. ✅ Response serialization and formatting complete
8. ✅ Compliance requirements integrated (HIPAA/GDPR/Bangladesh)
9. ✅ Rate limiting and security headers configured
10. ✅ Service ready for integration testing

**For Frontend Applications**:
1. ✅ All UI components implemented
2. ✅ All routes and pages implemented
3. ✅ API integration complete
4. ✅ User authentication flow working
5. ✅ Form validation and error handling
6. ✅ State management working correctly
7. ✅ Responsive design for mobile/tablet/desktop
8. ✅ Accessibility features implemented (A11y)
9. ✅ Performance optimizations applied
10. ✅ App ready for comprehensive testing

### Template Execution Plan

**Phase 2 Steps** (3-5 hours):
1. **Core Logic** - Implement primary business logic
2. **Database** - Create complete schema and migrations
3. **APIs** - Implement all endpoints/integrations
4. **Security** - Add authentication, authorization, validation
5. **Compliance** - Integrate HIPAA/GDPR/compliance requirements
6. **Error Handling** - Comprehensive error management
7. **Testing Prep** - Set up for Phase 3 testing
8. **Documentation** - Document all features and APIs

### Template Success Criteria

- ✅ All features implemented and working
- ✅ Database schema complete with migrations
- ✅ Third-party integrations tested manually
- ✅ Authentication and authorization working
- ✅ Error handling covers edge cases
- ✅ Compliance requirements implemented
- ✅ Code is clean and well-documented
- ✅ Ready for automated testing

### Template Response Contract

```json
{
  "phase": "implement",
  "serviceId": "[SERVICE_ID]",
  "completionStatus": "complete|in-progress|blocked",
  "implementation": {
    "businessLogic": "complete",
    "databaseSchema": "complete",
    "apiIntegrations": "complete",
    "authentication": "working",
    "validation": "complete",
    "errorHandling": "comprehensive",
    "complianceIntegration": "complete",
    "codeQuality": 92/100
  },
  "featuresImplemented": ["feature1", "feature2", "..."],
  "apiEndpoints": ["GET /api/resource", "POST /api/resource", "..."],
  "nextPhase": "test",
  "issuesFound": ["list", "of", "any", "remaining", "issues"],
  "readyForPhase3": true/false
}
```

---

## TEMPLATE 3: PHASE 3 - TEST

### Template Purpose
Comprehensive testing including unit tests, integration tests, compliance validation, performance testing, and security testing. This phase ensures the service/application meets quality and compliance requirements.

### Template Identity
```
Role: [SERVICE_NAME] Testing Agent
Mission: Comprehensively test [SERVICE_NAME] for quality and compliance
Primary Responsibility: Validate functionality, security, and compliance
Quality Target: 90/100 (testing completeness)
Framework: PEA v2.0 with JibonFlow specialization
```

### Template Constraints (Non-Negotiable)

**For Backend Services**:
1. ✅ Unit test coverage ≥80%
2. ✅ Integration tests cover all endpoints
3. ✅ HIPAA audit logging validated
4. ✅ GDPR data handling tested
5. ✅ Bangladesh compliance verified
6. ✅ Security tests (OWASP Top 10)
7. ✅ Load testing completed
8. ✅ Error scenarios tested
9. ✅ All tests passing with green status
10. ✅ Test report generated

**For Frontend Applications**:
1. ✅ Unit test coverage ≥80%
2. ✅ Component tests complete
3. ✅ E2E tests for critical user flows
4. ✅ Accessibility (A11y) tests passing
5. ✅ Responsive design tests passing
6. ✅ Performance tests (Lighthouse >90)
7. ✅ Cross-browser testing completed
8. ✅ User flow testing completed
9. ✅ All tests passing
10. ✅ Test report generated

### Template Execution Plan

**Phase 3 Steps** (2-3 hours):
1. **Unit Tests** - Create comprehensive unit test suite
2. **Integration Tests** - Test service/component interactions
3. **Compliance Tests** - HIPAA, GDPR, Bangladesh validation
4. **Security Tests** - OWASP Top 10 security testing
5. **Performance Tests** - Load, stress, and performance testing
6. **Accessibility Tests** - A11y compliance validation
7. **E2E Tests** - Full user workflow testing
8. **Reporting** - Generate test reports and coverage metrics

### Template Success Criteria

- ✅ Test coverage ≥80%
- ✅ All tests passing (green)
- ✅ No critical security issues
- ✅ Compliance requirements met
- ✅ Performance acceptable
- ✅ Error scenarios handled
- ✅ Test documentation complete
- ✅ Ready for deployment

### Template Response Contract

```json
{
  "phase": "test",
  "serviceId": "[SERVICE_ID]",
  "completionStatus": "complete|in-progress|blocked",
  "testing": {
    "unitTestCoverage": "82%",
    "unitTestsPassing": true,
    "integrationTestsPassing": true,
    "securityTestsPassing": true,
    "complianceTestsPassing": true,
    "performanceTestsPassing": true,
    "accessibilityScore": 92/100,
    "criticIssues": 0,
    "warningIssues": 3
  },
  "testCoverage": {
    "lines": "82%",
    "branches": "78%",
    "functions": "85%",
    "statements": "81%"
  },
  "complianceValidation": {
    "hipaa": "passed",
    "gdpr": "passed",
    "bangladesh": "passed"
  },
  "nextPhase": "deploy",
  "issuesFound": ["issue1", "issue2", "issue3"],
  "readyForPhase4": true/false
}
```

---

## TEMPLATE 4: PHASE 4 - DEPLOY

### Template Purpose
Prepare for production deployment, configure Docker containers, validate deployment procedures, and ensure production readiness. This phase transitions the service/application from development to production.

### Template Identity
```
Role: [SERVICE_NAME] Deployment Agent
Mission: Prepare [SERVICE_NAME] for production deployment
Primary Responsibility: Ensure production readiness
Quality Target: 95/100 (deployment completeness)
Framework: PEA v2.0 with JibonFlow specialization
```

### Template Constraints (Non-Negotiable)

**For Backend Services**:
1. ✅ Docker image builds successfully
2. ✅ docker-compose.yml configured for full stack
3. ✅ Environment configuration for production
4. ✅ Health check endpoints working
5. ✅ Graceful shutdown implemented
6. ✅ Logging configured (stdout/stderr)
7. ✅ Database migrations automated
8. ✅ SSL/TLS configured for production
9. ✅ Monitoring and alerting configured
10. ✅ Deployment documentation complete

**For Frontend Applications**:
1. ✅ Build optimization applied
2. ✅ Docker image builds successfully
3. ✅ Production environment configured
4. ✅ Static assets optimized
5. ✅ CDN configuration ready
6. ✅ SSL/TLS configured for production
7. ✅ Performance metrics baseline established
8. ✅ Error tracking configured
9. ✅ Analytics tracking configured
10. ✅ Deployment documentation complete

### Template Execution Plan

**Phase 4 Steps** (1-2 hours):
1. **Docker** - Create/optimize Docker image
2. **Configuration** - Set up production environment
3. **Validation** - Test deployment in staging
4. **Monitoring** - Configure health checks and alerts
5. **Database** - Automate migration procedures
6. **Security** - SSL/TLS and production security
7. **Documentation** - Write deployment procedures
8. **Readiness** - Final production readiness checks

### Template Success Criteria

- ✅ Docker image builds
- ✅ Container starts successfully
- ✅ Health checks passing
- ✅ Database migrations work
- ✅ All services accessible
- ✅ Logging operational
- ✅ Monitoring configured
- ✅ Documentation complete

### Template Response Contract

```json
{
  "phase": "deploy",
  "serviceId": "[SERVICE_ID]",
  "completionStatus": "complete|in-progress|blocked",
  "deployment": {
    "dockerImageBuilt": true,
    "dockerImagePushed": true,
    "dockerImageTag": "[SERVICE_ID]:1.0.0",
    "stagingDeploymentSuccessful": true,
    "healthChecksPassing": true,
    "databaseMigrationsWorking": true,
    "loggingConfigured": true,
    "monitoringConfigured": true
  },
  "productionReadiness": {
    "securityChecks": "passed",
    "performanceChecks": "passed",
    "complianceChecks": "passed",
    "documentationComplete": true,
    "rollbackPlanReady": true
  },
  "deploymentSteps": [
    "Step 1 description",
    "Step 2 description",
    "..."
  ],
  "monitoringAlerts": ["alert1", "alert2", "..."],
  "nextPhase": "production",
  "issuesFound": [],
  "readyForProduction": true/false
}
```

---

## Template Adaptation Examples

### Example 1: Backend Service (Auth Service)

**Service**: auth-service  
**Technologies**: Express.js, JWT, PostgreSQL, Redis  
**Phase 1 Adaptation**:
- Initialize Express.js with JWT middleware skeleton
- Set up PostgreSQL connection for user data
- Create basic auth endpoints: `/health`, `/auth/login` skeleton
- Docker files for Express application

**Phase 2 Adaptation**:
- Implement full JWT token generation and validation
- Implement OAuth2 flow
- Database schema for users and tokens
- HIPAA audit logging for all auth events

**Phase 3 Adaptation**:
- Unit tests for JWT generation/validation
- Integration tests for OAuth2 flow
- Security tests for password handling
- HIPAA audit logging validation

**Phase 4 Adaptation**:
- Docker image for Express.js app
- Redis cache configuration for token blacklist
- Production security configuration (SSL, rate limiting)

### Example 2: Frontend Application (Patient Portal)

**Application**: patient-portal  
**Technologies**: Next.js 14, TypeScript, TailwindCSS, Redux  
**Phase 1 Adaptation**:
- Initialize Next.js 14 project
- Set up authentication with backend
- Create basic layout components
- TailwindCSS styling initialized

**Phase 2 Adaptation**:
- Implement patient dashboard page
- Implement appointment booking interface
- Implement patient records view
- API integration with backend

**Phase 3 Adaptation**:
- Unit tests for components
- E2E tests for user flows
- Accessibility tests (A11y)
- Performance tests (Lighthouse)

**Phase 4 Adaptation**:
- Optimize build for production
- Docker image for Next.js app
- CDN configuration
- Monitoring and error tracking setup

---

## Template Usage Instructions

### For Backend Service Scaffolding

1. Read **TEMPLATE 1: SCAFFOLD**
2. Replace `[SERVICE_NAME]` with actual service (e.g., "Auth Service")
3. Follow all constraints marked with ✅
4. Execute steps in sequence
5. Verify all success criteria met
6. Move to Phase 2

### For Backend Service Implementation

1. Read **TEMPLATE 2: IMPLEMENT**
2. Adapt to specific service context and technologies
3. Implement all required features
4. Follow compliance requirements (HIPAA/GDPR/Bangladesh)
5. Verify all success criteria met
6. Move to Phase 3

### For Backend Service Testing

1. Read **TEMPLATE 3: TEST**
2. Create test suites for all components
3. Achieve ≥80% code coverage
4. Validate compliance requirements
5. Verify all success criteria met
6. Move to Phase 4

### For Backend Service Deployment

1. Read **TEMPLATE 4: DEPLOY**
2. Create Docker image
3. Configure production environment
4. Validate in staging
5. Verify all success criteria met
6. Deploy to production

---

## Quality Metrics

| Template | Phases | Backend Apps | Frontend Apps | Total Prompts |
|----------|--------|--------------|---------------|---------------|
| Phase 1: Scaffold | 1 × 11 backend | 11 | 0 | 11 |
| Phase 1: Scaffold | 1 × 6 frontend | 0 | 6 | 6 |
| Phase 2: Implement | 1 × 11 backend | 11 | 0 | 11 |
| Phase 2: Implement | 1 × 6 frontend | 0 | 6 | 6 |
| Phase 3: Test | 1 × 11 backend | 11 | 0 | 11 |
| Phase 3: Test | 1 × 6 frontend | 0 | 6 | 6 |
| Phase 4: Deploy | 1 × 11 backend | 11 | 0 | 11 |
| Phase 4: Deploy | 1 × 6 frontend | 0 | 3 | 3 |
| **TOTALS** | **4 phases** | **44 backend** | **18 frontend** | **62 prompts** |

---

## Next Phase

These templates serve as the master reference for:
- ✅ Task #4: Generate Backend Service Prompts (11 services × 4 phases)
- ✅ Task #5: Generate Frontend Application Prompts (6 apps × 3 phases)
- ✅ Task #6-7: Cross-cutting and integration prompts use template structure

---

**Template Version**: 1.0.0  
**Last Updated**: November 7, 2025  
**Framework**: PEA v2.0 + JibonFlow Specialization  
**Status**: ✅ READY FOR SERVICE-SPECIFIC ADAPTATION
