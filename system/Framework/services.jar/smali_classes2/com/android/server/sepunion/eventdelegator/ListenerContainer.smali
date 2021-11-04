.class public Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
.super Ljava/lang/Object;
.source "ListenerContainer.java"


# instance fields
.field public final mContentObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mCustomEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mIntentActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mUriEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mContentObservers:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 19
    iput p1, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUserId:I

    .line 20
    return-void
.end method
