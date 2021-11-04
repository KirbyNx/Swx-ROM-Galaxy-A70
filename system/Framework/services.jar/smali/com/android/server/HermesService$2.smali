.class Lcom/android/server/HermesService$2;
.super Landroid/content/BroadcastReceiver;
.source "HermesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HermesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HermesService;


# direct methods
.method constructor <init>(Lcom/android/server/HermesService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/HermesService;

    .line 309
    iput-object p1, p0, Lcom/android/server/HermesService$2;->this$0:Lcom/android/server/HermesService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "ret":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 315
    # getter for: Lcom/android/server/HermesService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/HermesService;->access$200()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 316
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 317
    iget-object v2, p0, Lcom/android/server/HermesService$2;->this$0:Lcom/android/server/HermesService;

    invoke-virtual {v2}, Lcom/android/server/HermesService;->hermesSecnvmPowerOn()I

    move-result v0

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify key guard showing to hermesd ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HERMES#Service"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v1    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_3d
    return-void
.end method
