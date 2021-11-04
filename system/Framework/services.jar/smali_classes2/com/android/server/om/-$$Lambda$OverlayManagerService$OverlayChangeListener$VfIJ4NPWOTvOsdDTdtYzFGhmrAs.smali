.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;ZILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;->f$0:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    iput-boolean p2, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;->f$1:Z

    iput p3, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;->f$2:I

    iput-object p4, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;->f$0:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    iget-boolean v1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;->f$1:Z

    iget v2, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;->f$2:I

    iget-object v3, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->lambda$onOverlaysChanged$0$OverlayManagerService$OverlayChangeListener(ZILjava/lang/String;)V

    return-void
.end method
