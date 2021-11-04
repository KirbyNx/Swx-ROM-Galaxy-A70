.class Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
.super Ljava/lang/Object;
.source "SemExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# static fields
.field public static final TYPE_ACCESSIBILITY_SERVICE:I = 0x1

.field public static final TYPE_ACCESSIBILITY_SETTINGS:I = 0x2

.field public static final TYPE_OTHER_SETTINGS:I = 0x3


# instance fields
.field public actionType:I

.field componentName:Ljava/lang/String;

.field private exclusiveListSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public needNotify:Z

.field public setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

.field final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .registers 4

    .line 679
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    new-instance p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;)V

    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    .line 686
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
    .param p2, "x1"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;

    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->turnOnOff(ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    .param p1, "x1"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->canTurnOnFeature(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 679
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 679
    invoke-direct {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 679
    invoke-direct {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getType()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    .param p1, "x1"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v0

    return v0
.end method

.method private canTurnOnFeature(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .registers 8
    .param p1, "userStatus"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 730
    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canTurnOnFeature() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 733
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 734
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 735
    .local v1, "taskName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    iget-object v2, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 736
    .local v2, "tempTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    invoke-direct {v2, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 737
    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canTurnOnFeature() returns false : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is on"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v3, 0x0

    return v3

    .line 740
    .end local v1    # "taskName":Ljava/lang/String;
    .end local v2    # "tempTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    :cond_5f
    goto :goto_20

    .line 741
    :cond_60
    const/4 v1, 0x1

    return v1
.end method

.method private getName()Ljava/lang/String;
    .registers 2

    .line 693
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    return-object v0
.end method

.method private getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .registers 6
    .param p1, "userStatus"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 705
    invoke-direct {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 706
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$500(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 707
    return v1

    .line 709
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 712
    :cond_18
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->getCurrentSettings(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v0

    return v0
.end method

.method private getType()I
    .registers 2

    .line 697
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->actionType:I

    return v0
.end method

.method private isNotifyNeeded()Z
    .registers 2

    .line 701
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->needNotify:Z

    return v0
.end method

.method private turnOnOff(ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 7
    .param p1, "status"    # Z
    .param p2, "userStatus"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 717
    invoke-direct {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    .line 719
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 720
    .local v0, "serviceName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$500(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 721
    iget-object v1, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->access$1400(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 723
    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$500(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 722
    const-string v3, "enabled_accessibility_services"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreA11yServiceValue:Ljava/lang/String;

    .line 724
    .end local v0    # "serviceName":Landroid/content/ComponentName;
    goto :goto_3d

    .line 725
    :cond_38
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->turnOnOff(ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 727
    :goto_3d
    return-void
.end method
