.class public final synthetic Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$L4qW6PXCsdcJPKzCCEILAHtktOg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/att/iqi/libs/PreferenceStore;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$L4qW6PXCsdcJPKzCCEILAHtktOg;->f$0:Lcom/att/iqi/libs/PreferenceStore;

    iput-object p2, p0, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$L4qW6PXCsdcJPKzCCEILAHtktOg;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$L4qW6PXCsdcJPKzCCEILAHtktOg;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$L4qW6PXCsdcJPKzCCEILAHtktOg;->f$0:Lcom/att/iqi/libs/PreferenceStore;

    iget-object v1, p0, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$L4qW6PXCsdcJPKzCCEILAHtktOg;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$L4qW6PXCsdcJPKzCCEILAHtktOg;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/att/iqi/libs/PreferenceStore;->lambda$setBoolean$0$PreferenceStore(Ljava/lang/String;Z)V

    return-void
.end method
