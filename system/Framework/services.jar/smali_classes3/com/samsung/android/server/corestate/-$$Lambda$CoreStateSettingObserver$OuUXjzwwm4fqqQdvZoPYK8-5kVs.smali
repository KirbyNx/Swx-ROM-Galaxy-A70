.class public final synthetic Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$OuUXjzwwm4fqqQdvZoPYK8-5kVs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/database/ContentObserver;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$OuUXjzwwm4fqqQdvZoPYK8-5kVs;->f$0:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    iput-object p2, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$OuUXjzwwm4fqqQdvZoPYK8-5kVs;->f$1:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$OuUXjzwwm4fqqQdvZoPYK8-5kVs;->f$2:Z

    iput-object p4, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$OuUXjzwwm4fqqQdvZoPYK8-5kVs;->f$3:Landroid/database/ContentObserver;

    iput p5, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$OuUXjzwwm4fqqQdvZoPYK8-5kVs;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$OuUXjzwwm4fqqQdvZoPYK8-5kVs;->f$0:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$OuUXjzwwm4fqqQdvZoPYK8-5kVs;->f$1:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$OuUXjzwwm4fqqQdvZoPYK8-5kVs;->f$2:Z

    iget-object v3, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$OuUXjzwwm4fqqQdvZoPYK8-5kVs;->f$3:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateSettingObserver$OuUXjzwwm4fqqQdvZoPYK8-5kVs;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->lambda$registerContentObserver$1$CoreStateSettingObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
