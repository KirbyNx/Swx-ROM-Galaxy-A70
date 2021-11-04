.class Lcom/att/iqi/IQIConcierge$1;
.super Landroid/content/BroadcastReceiver;
.source "IQIConcierge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIConcierge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIConcierge;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIConcierge;)V
    .registers 2
    .param p1, "this$0"    # Lcom/att/iqi/IQIConcierge;

    .line 84
    iput-object p1, p0, Lcom/att/iqi/IQIConcierge$1;->this$0:Lcom/att/iqi/IQIConcierge;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.att.iqi.action.ACTION_MCC_MNC_VALIDATION_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 89
    const/4 v1, 0x0

    const-string v2, "disabled"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 90
    .local v1, "disabled":Z
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object v2

    .line 91
    const-string v3, "disable_mcc_mnc_validation"

    invoke-virtual {v2, v3, v1}, Lcom/att/iqi/libs/PreferenceStore;->setBoolean(Ljava/lang/String;Z)V

    .line 93
    .end local v1    # "disabled":Z
    :cond_1c
    return-void
.end method
