.class Lcom/android/server/enterprise/dex/DexPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "DexPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/dex/DexPolicy;-><init>(Lcom/android/server/enterprise/dex/DexPolicy$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/dex/DexPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/dex/DexPolicy;

    .line 147
    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x35f22cb2    # -2323667.5f

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_2f

    const v2, 0x8a75b96

    if-eq v1, v2, :cond_25

    const v2, 0x6c272afe

    if-eq v1, v2, :cond_1b

    :cond_1a
    goto :goto_39

    :cond_1b
    const-string v1, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v5

    goto :goto_3a

    :cond_25
    const-string v1, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v3

    goto :goto_3a

    :cond_2f
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v4

    goto :goto_3a

    :goto_39
    const/4 v1, -0x1

    :goto_3a
    const-string v2, "DexPolicyService"

    if-eqz v1, :cond_98

    if-eq v1, v5, :cond_92

    if-eq v1, v4, :cond_43

    goto :goto_9e

    .line 159
    :cond_43
    const-string v1, "ACTION_LOCKED_BOOT_COMPLETED"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyApplied()Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v1

    if-nez v1, :cond_71

    .line 161
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    iget-object v4, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v4}, Lcom/android/server/enterprise/dex/DexPolicy;->getAdminUidForEthernetOnly()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    # setter for: Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v1, v2}, Lcom/android/server/enterprise/dex/DexPolicy;->access$102(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 162
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    # getter for: Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->access$100(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/dex/DexPolicy;->access$200(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 164
    :cond_71
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 165
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    # invokes: Lcom/android/server/enterprise/dex/DexPolicy;->exitDexModeSetPackageState()V
    invoke-static {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->access$300(Lcom/android/server/enterprise/dex/DexPolicy;)V

    .line 167
    :cond_7e
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v1

    if-eqz v1, :cond_9e

    # getter for: Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z
    invoke-static {}, Lcom/android/server/enterprise/dex/DexPolicy;->access$400()Z

    move-result v1

    if-nez v1, :cond_9e

    .line 168
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    # invokes: Lcom/android/server/enterprise/dex/DexPolicy;->registerDexBlocker()V
    invoke-static {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->access$500(Lcom/android/server/enterprise/dex/DexPolicy;)V

    goto :goto_9e

    .line 156
    :cond_92
    const-string v1, "dex exit "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    goto :goto_9e

    .line 153
    :cond_98
    const-string v1, "dex enter "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    nop

    .line 172
    :cond_9e
    :goto_9e
    return-void
.end method
