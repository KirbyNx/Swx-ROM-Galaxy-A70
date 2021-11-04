.class public final synthetic Lcom/android/server/wm/-$$Lambda$DexHelpController$nsBD5JWPmbJUz-xJlOh1sR9Wm1Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DexHelpController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexHelpController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DexHelpController$nsBD5JWPmbJUz-xJlOh1sR9Wm1Q;->f$0:Lcom/android/server/wm/DexHelpController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DexHelpController$nsBD5JWPmbJUz-xJlOh1sR9Wm1Q;->f$0:Lcom/android/server/wm/DexHelpController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexHelpController;->lambda$installSystemProvidersLocked$0$DexHelpController()V

    return-void
.end method
