.class public Lcom/android/server/media/CustomMediaKeyDispatcher;
.super Lcom/android/server/media/MediaKeyDispatcher;
.source "CustomMediaKeyDispatcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaKeyDispatcher;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
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

    .line 31
    invoke-super {p0}, Lcom/android/server/media/MediaKeyDispatcher;->getOverriddenKeyEvents()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method setOverriddenKeyEvents(II)V
    .registers 3
    .param p1, "keyCode"    # I
    .param p2, "keyEventType"    # I

    .line 36
    invoke-super {p0, p1, p2}, Lcom/android/server/media/MediaKeyDispatcher;->setOverriddenKeyEvents(II)V

    .line 37
    return-void
.end method
