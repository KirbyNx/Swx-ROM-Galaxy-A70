.class public final synthetic Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$xJYOQ5rtiNalR5Gf3-7WNMncUc4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$xJYOQ5rtiNalR5Gf3-7WNMncUc4;->f$0:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$xJYOQ5rtiNalR5Gf3-7WNMncUc4;->f$0:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->lambda$endObserveCoreStateSettingsForSingleUser$0$CoreStateSettingObserver()V

    return-void
.end method
