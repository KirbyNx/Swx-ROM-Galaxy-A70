.class final Lcom/android/server/display/DisplayModeDirector$Vote;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Vote"
.end annotation


# static fields
.field public static final APP_REQUEST_REFRESH_RATE_RANGE_PRIORITY_CUTOFF:I = 0x4

.field public static final INVALID_SIZE:I = -0x1

.field public static final MAX_PRIORITY:I

.field public static final MIN_PRIORITY:I = 0x0

.field public static final PRIORITY_APP_REQUEST_REFRESH_RATE:I = 0x4

.field public static final PRIORITY_APP_REQUEST_SIZE:I = 0x5

.field public static final PRIORITY_DEFAULT_REFRESH_RATE:I = 0x0

.field public static final PRIORITY_LOW_BRIGHTNESS:I = 0x2

.field public static final PRIORITY_LOW_POWER_MODE:I = 0x7

.field public static final PRIORITY_REFRESH_RATE_MAX_LIMIT:I = 0x1

.field public static final PRIORITY_REFRESH_RATE_MODE:I = 0x8

.field public static final PRIORITY_USER_SETTING_MIN_REFRESH_RATE:I = 0x3

.field public static final PRIORITY_USER_SETTING_PEAK_REFRESH_RATE:I = 0x6


# instance fields
.field public final height:I

.field public final refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 953
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v0, :cond_7

    .line 954
    const/16 v0, 0x8

    goto :goto_8

    :cond_7
    const/4 v0, 0x7

    :goto_8
    sput v0, Lcom/android/server/display/DisplayModeDirector$Vote;->MAX_PRIORITY:I

    .line 953
    return-void
.end method

.method private constructor <init>(IIFF)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minRefreshRate"    # F
    .param p4, "maxRefreshRate"    # F

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    .line 990
    iput p2, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    .line 991
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    invoke-direct {v0, p3, p4}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    .line 993
    return-void
.end method

.method public static forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 4
    .param p0, "minRefreshRate"    # F
    .param p1, "maxRefreshRate"    # F

    .line 980
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, p0, p1}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFF)V

    return-object v0
.end method

.method public static forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 984
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v1, 0x0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFF)V

    return-object v0
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "priority"    # I

    .line 996
    packed-switch p0, :pswitch_data_24

    .line 1018
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1013
    :pswitch_8
    const-string v0, "PRIORITY_REFRESH_RATE_MODE"

    return-object v0

    .line 1010
    :pswitch_b
    const-string v0, "PRIORITY_LOW_POWER_MODE"

    return-object v0

    .line 1008
    :pswitch_e
    const-string v0, "PRIORITY_USER_SETTING_PEAK_REFRESH_RATE"

    return-object v0

    .line 1006
    :pswitch_11
    const-string v0, "PRIORITY_APP_REQUEST_SIZE"

    return-object v0

    .line 1004
    :pswitch_14
    const-string v0, "PRIORITY_APP_REQUEST_REFRESH_RATE"

    return-object v0

    .line 1002
    :pswitch_17
    const-string v0, "PRIORITY_USER_SETTING_MIN_REFRESH_RATE"

    return-object v0

    .line 1000
    :pswitch_1a
    const-string v0, "PRIORITY_LOW_BRIGHTNESS"

    return-object v0

    .line 1015
    :pswitch_1d
    const-string v0, "PRIORITY_REFRESH_RATE_MAX_LIMIT"

    return-object v0

    .line 998
    :pswitch_20
    const-string v0, "PRIORITY_DEFAULT_REFRESH_RATE"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vote{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
