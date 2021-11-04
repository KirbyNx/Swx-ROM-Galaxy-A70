.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutUser$qhPPDsyjrNeV8igfceUXe-MeNt8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutUser;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$3:[I

.field public final synthetic f$4:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutUser;ZLcom/android/server/pm/ShortcutService;[I[I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$qhPPDsyjrNeV8igfceUXe-MeNt8;->f$0:Lcom/android/server/pm/ShortcutUser;

    iput-boolean p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$qhPPDsyjrNeV8igfceUXe-MeNt8;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$qhPPDsyjrNeV8igfceUXe-MeNt8;->f$2:Lcom/android/server/pm/ShortcutService;

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$qhPPDsyjrNeV8igfceUXe-MeNt8;->f$3:[I

    iput-object p5, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$qhPPDsyjrNeV8igfceUXe-MeNt8;->f$4:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$qhPPDsyjrNeV8igfceUXe-MeNt8;->f$0:Lcom/android/server/pm/ShortcutUser;

    iget-boolean v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$qhPPDsyjrNeV8igfceUXe-MeNt8;->f$1:Z

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$qhPPDsyjrNeV8igfceUXe-MeNt8;->f$2:Lcom/android/server/pm/ShortcutService;

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$qhPPDsyjrNeV8igfceUXe-MeNt8;->f$3:[I

    iget-object v4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$qhPPDsyjrNeV8igfceUXe-MeNt8;->f$4:[I

    move-object v5, p1

    check-cast v5, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutUser;->lambda$mergeRestoredFile$6$ShortcutUser(ZLcom/android/server/pm/ShortcutService;[I[ILcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
