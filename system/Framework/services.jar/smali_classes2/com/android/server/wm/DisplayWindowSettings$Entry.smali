.class Lcom/android/server/wm/DisplayWindowSettings$Entry;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private mFixedToUserRotation:I

.field private mForcedDensity:I

.field private mForcedHeight:I

.field private mForcedScalingMode:I

.field private mForcedWidth:I

.field private final mName:Ljava/lang/String;

.field private mRemoveContentMode:I

.field private mShouldShowIme:Z

.field private mShouldShowSystemDecors:Z

.field private mShouldShowWithInsecureKeyguard:Z

.field private mUserRotation:I

.field private mUserRotationMode:I

.field private mWindowingMode:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    .line 108
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    .line 109
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    .line 113
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    .line 114
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    .line 115
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    .line 118
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    .line 121
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/server/wm/DisplayWindowSettings$1;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "copyFrom"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;)V

    .line 126
    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    .line 127
    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    .line 128
    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    .line 129
    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    .line 130
    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    .line 131
    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    .line 132
    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    .line 133
    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    .line 134
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    .line 135
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    .line 136
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    .line 137
    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;Lcom/android/server/wm/DisplayWindowSettings$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p3, "x2"    # Lcom/android/server/wm/DisplayWindowSettings$1;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p1, "x1"    # Z

    .line 105
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p1, "x1"    # Z

    .line 105
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p1, "x1"    # Z

    .line 105
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 105
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    return p1
.end method

.method private isEmpty()Z
    .registers 2

    .line 142
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    if-nez v0, :cond_32

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    if-nez v0, :cond_32

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    if-nez v0, :cond_32

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    if-nez v0, :cond_32

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    if-nez v0, :cond_32

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    if-nez v0, :cond_32

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    if-nez v0, :cond_32

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    if-nez v0, :cond_32

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    if-nez v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0
.end method
