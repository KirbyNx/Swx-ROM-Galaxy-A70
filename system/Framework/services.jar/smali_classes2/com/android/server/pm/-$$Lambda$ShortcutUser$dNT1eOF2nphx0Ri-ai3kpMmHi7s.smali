.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutUser$dNT1eOF2nphx0Ri-ai3kpMmHi7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$dNT1eOF2nphx0Ri-ai3kpMmHi7s;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$dNT1eOF2nphx0Ri-ai3kpMmHi7s;->f$0:Z

    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutUser;->lambda$attemptToRestoreIfNeededAndSave$2(ZLcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method
