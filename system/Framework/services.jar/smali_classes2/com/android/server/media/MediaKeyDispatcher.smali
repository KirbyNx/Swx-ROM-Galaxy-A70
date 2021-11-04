.class public abstract Lcom/android/server/media/MediaKeyDispatcher;
.super Ljava/lang/Object;
.source "MediaKeyDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaKeyDispatcher$KeyEventType;
    }
.end annotation


# static fields
.field static final KEY_EVENT_DOUBLE_TAP:I = 0x2

.field static final KEY_EVENT_LONG_PRESS:I = 0x8

.field static final KEY_EVENT_SINGLE_TAP:I = 0x1

.field static final KEY_EVENT_TRIPLE_TAP:I = 0x4


# instance fields
.field private mOverriddenKeyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    .line 67
    const/16 v1, 0x7e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0xa4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method static isDoubleTapOverridden(I)Z
    .registers 2
    .param p0, "overriddenKeyEvents"    # I

    .line 148
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static isLongPressOverridden(I)Z
    .registers 2
    .param p0, "overriddenKeyEvents"    # I

    .line 156
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static isSingleTapOverridden(I)Z
    .registers 2
    .param p0, "overriddenKeyEvents"    # I

    .line 144
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static isTripleTapOverridden(I)Z
    .registers 2
    .param p0, "overriddenKeyEvents"    # I

    .line 152
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method getMediaButtonReceiver(Landroid/view/KeyEvent;IZ)Landroid/app/PendingIntent;
    .registers 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "uid"    # I
    .param p3, "asSystemService"    # Z

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method getMediaSession(Landroid/view/KeyEvent;IZ)Landroid/media/session/MediaSession$Token;
    .registers 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "uid"    # I
    .param p3, "asSystemService"    # Z

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method getOverriddenKeyEvents()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    return-object v0
.end method

.method onDoubleTap(Landroid/view/KeyEvent;)V
    .registers 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 217
    return-void
.end method

.method onLongPress(Landroid/view/KeyEvent;)V
    .registers 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 257
    return-void
.end method

.method onSingleTap(Landroid/view/KeyEvent;)V
    .registers 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 200
    return-void
.end method

.method onTripleTap(Landroid/view/KeyEvent;)V
    .registers 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 234
    return-void
.end method

.method setOverriddenKeyEvents(II)V
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "keyEventType"    # I

    .line 182
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method
