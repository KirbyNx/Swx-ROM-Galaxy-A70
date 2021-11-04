.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NAPProfileActivation"
.end annotation


# instance fields
.field activationFlowType:I

.field activationIntervalValue:I

.field activationState:I

.field adminUid:I

.field profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 816
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    .param p2, "profile"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .param p3, "adminUid"    # I

    .line 823
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 825
    iput p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->adminUid:I

    .line 826
    return-void
.end method


# virtual methods
.method public getActivationFlowType()I
    .registers 2

    .line 869
    iget v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationFlowType:I

    return v0
.end method

.method public getActivationIntervalValue()I
    .registers 2

    .line 881
    iget v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationIntervalValue:I

    return v0
.end method

.method public getActivationState()I
    .registers 2

    .line 844
    iget v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    return v0
.end method

.method public getAdminUid()I
    .registers 2

    .line 853
    iget v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->adminUid:I

    return v0
.end method

.method public getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .registers 2

    .line 834
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    return-object v0
.end method

.method public setActivationFlowType(I)V
    .registers 2
    .param p1, "activationFlowType"    # I

    .line 875
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationFlowType:I

    .line 876
    return-void
.end method

.method public setActivationIntervalValue(I)V
    .registers 2
    .param p1, "activationIntervalValue"    # I

    .line 887
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationIntervalValue:I

    .line 888
    return-void
.end method

.method public setActivationState(I)V
    .registers 2
    .param p1, "activationState"    # I

    .line 863
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    .line 864
    return-void
.end method
