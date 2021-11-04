.class Lcom/android/server/smartclip/SpenGarageSpecManager;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;
    }
.end annotation


# static fields
.field private static final FEATURE_NAME_SPEN_GARAGE_SPEC:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC"

.field private static final GARAGE_BUNDLED:Ljava/lang/String; = "bundled"

.field private static final GARAGE_UNBUNDLED_SPEC:Ljava/lang/String; = "unbundled_spec"

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;


# instance fields
.field private mIsBundledSpenSupported:Z

.field private mSupportedExternalSpenFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2607
    const-class v0, Lcom/android/server/smartclip/SpenGarageSpecManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/smartclip/SpenGarageSpecManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    .line 2616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mSupportedExternalSpenFeatures:Ljava/util/ArrayList;

    .line 2630
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGarageSpecManager;->parseSpenGarageSpec()V

    .line 2631
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;
    .registers 2

    const-class v0, Lcom/android/server/smartclip/SpenGarageSpecManager;

    monitor-enter v0

    .line 2623
    :try_start_3
    sget-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;

    if-nez v1, :cond_e

    .line 2624
    new-instance v1, Lcom/android/server/smartclip/SpenGarageSpecManager;

    invoke-direct {v1}, Lcom/android/server/smartclip/SpenGarageSpecManager;-><init>()V

    sput-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;

    .line 2626
    :cond_e
    sget-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 2622
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseSpenGarageSpec()V
    .registers 17

    .line 2634
    move-object/from16 v0, p0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2635
    .local v1, "strSpenGarageSpec":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2636
    sget-object v2, Lcom/android/server/smartclip/SpenGarageSpecManager;->TAG:Ljava/lang/String;

    const-string v3, "Spen Garage Spec is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    return-void

    .line 2639
    :cond_1a
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    .line 2641
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2642
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2644
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2645
    .local v3, "features":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_32
    if-ge v6, v4, :cond_e2

    aget-object v7, v3, v6

    .line 2646
    .local v7, "feature":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2647
    .local v8, "featureSet":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_58

    .line 2648
    sget-object v9, Lcom/android/server/smartclip/SpenGarageSpecManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect Spec, strSpec : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    goto/16 :goto_dd

    .line 2652
    :cond_58
    aget-object v9, v8, v5

    .line 2653
    .local v9, "key":Ljava/lang/String;
    aget-object v10, v8, v2

    .line 2655
    .local v10, "value":Ljava/lang/String;
    const/4 v11, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, -0x69b792f

    if-eq v12, v13, :cond_76

    const v13, 0xe06e022

    if-eq v12, v13, :cond_6c

    :cond_6b
    goto :goto_80

    :cond_6c
    const-string v12, "bundled"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6b

    move v11, v5

    goto :goto_80

    :cond_76
    const-string/jumbo v12, "unbundled_spec"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6b

    move v11, v2

    :goto_80
    if-eqz v11, :cond_bc

    if-eq v11, v2, :cond_85

    goto :goto_dd

    .line 2661
    :cond_85
    const-string v11, "\\|"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2662
    .local v11, "valueArray":[Ljava/lang/String;
    sget-object v12, Lcom/android/server/smartclip/SpenGarageSpecManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unbundled_spec = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    array-length v12, v11

    move v13, v5

    :goto_a4
    if-ge v13, v12, :cond_bb

    aget-object v14, v11, v13

    .line 2664
    .local v14, "item":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->valueOf(Ljava/lang/String;)Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    move-result-object v15

    .line 2665
    .local v15, "spenFeature":Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;
    if-eqz v15, :cond_b7

    .line 2666
    iget-object v2, v0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mSupportedExternalSpenFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2663
    .end local v14    # "item":Ljava/lang/String;
    .end local v15    # "spenFeature":Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;
    :cond_b7
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x1

    goto :goto_a4

    .line 2669
    :cond_bb
    goto :goto_dd

    .line 2657
    .end local v11    # "valueArray":[Ljava/lang/String;
    :cond_bc
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    .line 2658
    sget-object v2, Lcom/android/server/smartclip/SpenGarageSpecManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bundle = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    nop

    .line 2645
    .end local v7    # "feature":Ljava/lang/String;
    .end local v8    # "featureSet":[Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :goto_dd
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    goto/16 :goto_32

    .line 2675
    :cond_e2
    return-void
.end method


# virtual methods
.method public isBundledSpenSupported()Z
    .registers 2

    .line 2678
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    return v0
.end method

.method public isUnbundledRemoteSpenSupported()Z
    .registers 3

    .line 2681
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mSupportedExternalSpenFeatures:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->REMOTE:Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
