.class Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;
.super Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .registers 2

    .line 2625
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/security/SecurityPolicy$1;

    .line 2625
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    return-void
.end method


# virtual methods
.method public isDodBannerVisibleAsUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2628
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v0

    return v0
.end method
