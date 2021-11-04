.class public final synthetic Lcom/samsung/android/server/audio/-$$Lambda$MediaKeyEventSessionListener$jv8m1UPW-bfGxHDILxPElTxbVq4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/-$$Lambda$MediaKeyEventSessionListener$jv8m1UPW-bfGxHDILxPElTxbVq4;->f$0:Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;

    return-void
.end method


# virtual methods
.method public final onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/audio/-$$Lambda$MediaKeyEventSessionListener$jv8m1UPW-bfGxHDILxPElTxbVq4;->f$0:Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;->lambda$new$0$MediaKeyEventSessionListener(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    return-void
.end method
