.class public Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;
.super Ljava/lang/Object;
.source "EnterpriseBillingPolicyFeatureMonitor.java"


# static fields
.field public static final FEATURE_NOT_ENABLED:Ljava/lang/String; = "Feature not enabled"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnterpriseBillingFeatureSupported()Z
    .registers 2

    .line 13
    nop

    .line 14
    const-string/jumbo v0, "ro.carrier"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi-only"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 15
    const/4 v0, 0x1

    return v0

    .line 17
    :cond_16
    const/4 v0, 0x0

    return v0
.end method
