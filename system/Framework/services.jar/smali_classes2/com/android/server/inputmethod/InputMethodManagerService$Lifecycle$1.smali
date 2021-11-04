.class Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$1;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    .line 1967
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1971
    nop

    .line 1972
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1973
    .local v0, "statusBarService":Lcom/android/server/statusbar/StatusBarManagerService;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->access$1900(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 1975
    return-void
.end method
