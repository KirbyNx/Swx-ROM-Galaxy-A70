.class final Lcom/android/server/wm/PackageConfiguration;
.super Ljava/lang/Object;
.source "PackageConfigurationController.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2f0880a250L


# instance fields
.field final mName:Ljava/lang/String;

.field private final mPolicyDataMap:Lcom/android/server/wm/PolicyDataMap;

.field private transient mTmpPolicyDataMap:Lcom/android/server/wm/PolicyDataMap;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "configurationName"    # Ljava/lang/String;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Lcom/android/server/wm/PolicyDataMap;

    invoke-direct {v0}, Lcom/android/server/wm/PolicyDataMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfiguration;->mPolicyDataMap:Lcom/android/server/wm/PolicyDataMap;

    .line 317
    iput-object p1, p0, Lcom/android/server/wm/PackageConfiguration;->mName:Ljava/lang/String;

    .line 318
    return-void
.end method


# virtual methods
.method getPolicyDataMap()Lcom/android/server/wm/PolicyDataMap;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/PackageConfiguration;->mPolicyDataMap:Lcom/android/server/wm/PolicyDataMap;

    return-object v0
.end method

.method updateCompleted()V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/android/server/wm/PackageConfiguration;->mPolicyDataMap:Lcom/android/server/wm/PolicyDataMap;

    invoke-virtual {v0}, Lcom/android/server/wm/PolicyDataMap;->clear()V

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/PackageConfiguration;->mPolicyDataMap:Lcom/android/server/wm/PolicyDataMap;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfiguration;->mTmpPolicyDataMap:Lcom/android/server/wm/PolicyDataMap;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PolicyDataMap;->putAll(Ljava/util/Map;)V

    .line 338
    return-void
.end method

.method updateFromScpm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 329
    if-nez p2, :cond_4

    .line 330
    const-string p2, ""

    .line 332
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/PackageConfiguration;->mTmpPolicyDataMap:Lcom/android/server/wm/PolicyDataMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PolicyDataMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    return-void
.end method

.method updatePrepared()V
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/PackageConfiguration;->mTmpPolicyDataMap:Lcom/android/server/wm/PolicyDataMap;

    if-nez v0, :cond_c

    .line 322
    new-instance v0, Lcom/android/server/wm/PolicyDataMap;

    invoke-direct {v0}, Lcom/android/server/wm/PolicyDataMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfiguration;->mTmpPolicyDataMap:Lcom/android/server/wm/PolicyDataMap;

    goto :goto_f

    .line 324
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/PolicyDataMap;->clear()V

    .line 326
    :goto_f
    return-void
.end method
