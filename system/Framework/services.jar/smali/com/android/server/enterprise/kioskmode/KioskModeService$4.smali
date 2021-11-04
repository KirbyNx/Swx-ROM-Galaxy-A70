.class Lcom/android/server/enterprise/kioskmode/KioskModeService$4;
.super Ljava/lang/Object;
.source "KioskModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

.field final synthetic val$adminUid:I

.field final synthetic val$info:Lcom/samsung/android/knox/ContextInfo;

.field final synthetic val$kioskPackage:Ljava/lang/String;

.field final synthetic val$operation:I

.field final synthetic val$token:J

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;IIIJ)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 886
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iput-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$info:Lcom/samsung/android/knox/ContextInfo;

    iput-object p3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$kioskPackage:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$userId:I

    iput p5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$adminUid:I

    iput p6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$operation:I

    iput-wide p7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$token:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 889
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$info:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$kioskPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$600(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$userId:I

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->exitMultiWindow(I)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$700(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Z

    .line 895
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$userId:I

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$800(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Z

    .line 898
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$userId:I

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$900(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    .line 901
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$adminUid:I

    iget v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$operation:I

    const/4 v3, 0x0

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1000(Lcom/android/server/enterprise/kioskmode/KioskModeService;III)V

    .line 902
    iget-wide v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$token:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 903
    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$302(Z)Z

    .line 905
    return-void
.end method
