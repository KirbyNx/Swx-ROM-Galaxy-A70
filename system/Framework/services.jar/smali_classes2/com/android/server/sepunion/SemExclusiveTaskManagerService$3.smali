.class Lcom/android/server/sepunion/SemExclusiveTaskManagerService$3;
.super Ljava/lang/Object;
.source "SemExclusiveTaskManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->proccessExclusiveTask(Ljava/lang/String;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 325
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$3;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.accessibility.UPDATE_MY_A11Y_NOTI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v1, "com.samsung.accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$3;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$500(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 332
    return-void
.end method
