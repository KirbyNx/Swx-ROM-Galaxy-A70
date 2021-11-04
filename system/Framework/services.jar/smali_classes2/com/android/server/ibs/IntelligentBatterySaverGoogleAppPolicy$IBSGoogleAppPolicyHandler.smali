.class public Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;
.super Landroid/os/Handler;
.source "IntelligentBatterySaverGoogleAppPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IBSGoogleAppPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 79
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 80
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    goto :goto_20

    .line 91
    :cond_a
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    # setter for: Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z
    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->access$302(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Z)Z

    .line 92
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V
    invoke-static {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->access$400(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Z)V

    .line 93
    goto :goto_20

    .line 87
    :cond_15
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    # setter for: Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z
    invoke-static {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->access$302(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Z)Z

    .line 88
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->access$400(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Z)V

    .line 89
    nop

    .line 97
    :goto_20
    return-void
.end method
