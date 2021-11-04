.class public Lcom/android/server/policy/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final INTERCEPT_POWER:I = 0x11171

.field public static final SCREEN_TOGGLED:I = 0x11170

.field public static final WM_LID_STATE_CHANGED:I = 0x11172

.field public static final WM_TABLE_MODE_CHANGED:I = 0x11173


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeInterceptPower(Ljava/lang/String;II)V
    .registers 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "mpowerkeyhandled"    # I
    .param p2, "mpowerkeypresscounter"    # I

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x11171

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 31
    return-void
.end method

.method public static writeScreenToggled(I)V
    .registers 2
    .param p0, "screenState"    # I

    .line 26
    const v0, 0x11170

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 27
    return-void
.end method

.method public static writeWmLidStateChanged(I)V
    .registers 2
    .param p0, "lidstate"    # I

    .line 34
    const v0, 0x11172

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 35
    return-void
.end method

.method public static writeWmTableModeChanged(I)V
    .registers 2
    .param p0, "tablemode"    # I

    .line 38
    const v0, 0x11173

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 39
    return-void
.end method
