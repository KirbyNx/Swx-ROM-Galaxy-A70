.class Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SemShortcutManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemShortcutManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemShortcutManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 161
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 175
    const-string v0, "SemExecuteManagerService"

    const-string/jumbo v1, "onPackageModified"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # getter for: Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$000(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 177
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # getter for: Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$000(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    :cond_1f
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # getter for: Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$000(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 181
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 5

    .line 165
    const-string v0, "SemExecuteManagerService"

    const-string/jumbo v1, "onSomePackagesChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # getter for: Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$000(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 167
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # getter for: Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$000(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    :cond_1f
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    # getter for: Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$000(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    return-void
.end method
