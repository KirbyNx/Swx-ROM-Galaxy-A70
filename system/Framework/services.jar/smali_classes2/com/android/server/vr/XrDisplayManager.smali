.class public Lcom/android/server/vr/XrDisplayManager;
.super Ljava/lang/Object;
.source "XrDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    }
.end annotation


# static fields
.field public static final NAME_META_SCREEN:Ljava/lang/String; = "Meta Screen"

.field public static final NAME_XR_SCREEN:Ljava/lang/String; = "XR Screen"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

.field private mMetaScreenDisplay:Landroid/view/Display;

.field private mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

.field private mTetheredDisplay:Landroid/view/Display;

.field private mXrScreenDisplay:Landroid/view/Display;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vr/GearVrManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gearVrManagerService"    # Lcom/android/server/vr/GearVrManagerService;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/vr/XrDisplayManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/server/vr/XrDisplayManager;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    .line 33
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vr/XrDisplayManager;)Landroid/hardware/display/DisplayManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;

    .line 16
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;
    .param p1, "x1"    # Landroid/view/Display;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/vr/XrDisplayManager;->isExternalDisplay(Landroid/view/Display;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;

    .line 16
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Landroid/view/Display;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;
    .param p1, "x1"    # Landroid/view/Display;

    .line 16
    iput-object p1, p0, Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;
    .param p1, "x1"    # Landroid/view/Display;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/vr/XrDisplayManager;->isTetheredDisplay(Landroid/view/Display;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/GearVrManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;

    .line 16
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;
    .param p1, "x1"    # Landroid/view/Display;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/vr/XrDisplayManager;->isXrScreenDisplay(Landroid/view/Display;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;

    .line 16
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mXrScreenDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Landroid/view/Display;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;
    .param p1, "x1"    # Landroid/view/Display;

    .line 16
    iput-object p1, p0, Lcom/android/server/vr/XrDisplayManager;->mXrScreenDisplay:Landroid/view/Display;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;
    .param p1, "x1"    # Landroid/view/Display;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/vr/XrDisplayManager;->isMetaScreenDisplay(Landroid/view/Display;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;

    .line 16
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Landroid/view/Display;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;
    .param p1, "x1"    # Landroid/view/Display;

    .line 16
    iput-object p1, p0, Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/XrDisplayManager;

    .line 16
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    return-object v0
.end method

.method private isExternalDisplay(Landroid/view/Display;)Z
    .registers 4
    .param p1, "display"    # Landroid/view/Display;

    .line 109
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private isMetaScreenDisplay(Landroid/view/Display;)Z
    .registers 4
    .param p1, "display"    # Landroid/view/Display;

    .line 101
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/Display;->getOwnerUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Meta Screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method private isTetheredDisplay(Landroid/view/Display;)Z
    .registers 4
    .param p1, "display"    # Landroid/view/Display;

    .line 105
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/Display;->getOwnerUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->isHmtDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method private isXrScreenDisplay(Landroid/view/Display;)Z
    .registers 4
    .param p1, "display"    # Landroid/view/Display;

    .line 97
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/Display;->getOwnerUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XR Screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 147
    const-string v0, "XrDisplayManager:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mTetheredDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mXrScreenDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager;->mXrScreenDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMetaScreenDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    :cond_52
    const-string/jumbo v1, "null"

    :goto_55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 152
    return-void
.end method

.method public getMetaScreenDisplayId()I
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public getTetheredDisplayId()I
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public getXrScreenDisplayId()I
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mXrScreenDisplay:Landroid/view/Display;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public isMetaScreenDisplayOn()Z
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 140
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 141
    .local v0, "displayState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/4 v2, 0x5

    if-ne v0, v2, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    return v1

    .line 143
    .end local v0    # "displayState":I
    :cond_11
    return v1
.end method

.method public register()V
    .registers 4

    .line 37
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Lcom/android/server/vr/XrDisplayManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/vr/XrDisplayManager$1;-><init>(Lcom/android/server/vr/XrDisplayManager;)V

    .line 93
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 94
    return-void
.end method

.method public setOnXrDisplayListener(Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;)V
    .registers 2
    .param p1, "onXrDisplayListener"    # Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    .line 113
    iput-object p1, p0, Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    .line 114
    return-void
.end method
