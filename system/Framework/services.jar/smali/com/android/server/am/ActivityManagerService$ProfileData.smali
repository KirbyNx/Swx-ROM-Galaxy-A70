.class Lcom/android/server/am/ActivityManagerService$ProfileData;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProfileData"
.end annotation


# instance fields
.field private mProfileApp:Ljava/lang/String;

.field private mProfileProc:Lcom/android/server/am/ProcessRecord;

.field private mProfilerInfo:Landroid/app/ProfilerInfo;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 1717
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 1719
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1720
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    return-void
.end method


# virtual methods
.method getProfileApp()Ljava/lang/String;
    .registers 2

    .line 1730
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfileApp:Ljava/lang/String;

    return-object v0
.end method

.method getProfileProc()Lcom/android/server/am/ProcessRecord;
    .registers 2

    .line 1742
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method getProfilerInfo()Landroid/app/ProfilerInfo;
    .registers 2

    .line 1753
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    return-object v0
.end method

.method setProfileApp(Ljava/lang/String;)V
    .registers 3
    .param p1, "profileApp"    # Ljava/lang/String;

    .line 1723
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 1724
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_f

    .line 1725
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfileApp(Ljava/lang/String;)V

    .line 1727
    :cond_f
    return-void
.end method

.method setProfileProc(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "profileProc"    # Lcom/android/server/am/ProcessRecord;

    .line 1734
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1735
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_17

    .line 1736
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-nez p1, :cond_10

    const/4 v1, 0x0

    goto :goto_14

    .line 1737
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1736
    :goto_14
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfileProc(Lcom/android/server/wm/WindowProcessController;)V

    .line 1739
    :cond_17
    return-void
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)V
    .registers 3
    .param p1, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 1746
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1747
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_f

    .line 1748
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    .line 1750
    :cond_f
    return-void
.end method
