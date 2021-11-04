.class public final synthetic Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$I-pCc8iv22IUhdSYnUMR92aFBkM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;ILjava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$I-pCc8iv22IUhdSYnUMR92aFBkM;->f$0:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    iput p2, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$I-pCc8iv22IUhdSYnUMR92aFBkM;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$I-pCc8iv22IUhdSYnUMR92aFBkM;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$I-pCc8iv22IUhdSYnUMR92aFBkM;->f$0:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    iget v1, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$I-pCc8iv22IUhdSYnUMR92aFBkM;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$I-pCc8iv22IUhdSYnUMR92aFBkM;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->lambda$setState$0$CoreStateVolatileObserver(ILjava/lang/Runnable;)V

    return-void
.end method
