.class public Lcom/samsung/android/server/corestate/MultiWindowCoreStateSystemFeatureObserver;
.super Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;
.source "MultiWindowCoreStateSystemFeatureObserver.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public registerObservingItems()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSystemFeatureObserver;->mSystemFeaturesList:Ljava/util/ArrayList;

    const-string v1, "android.software.adjust_for_ime_while_ensuring_docked_stack"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
