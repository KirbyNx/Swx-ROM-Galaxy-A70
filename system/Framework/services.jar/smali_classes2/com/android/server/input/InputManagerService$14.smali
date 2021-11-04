.class Lcom/android/server/input/InputManagerService$14;
.super Landroid/database/ContentObserver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerLongPressTimeoutObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 3144
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 3147
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v1, "timeout changed"

    # invokes: Lcom/android/server/input/InputManagerService;->updateDeepPressStatusFromSettings(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$600(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V

    .line 3148
    return-void
.end method
