.class public final synthetic Lcom/android/server/am/-$$Lambda$KillPolicyManager$PsiFile$e0x36PTSMlpoRtZaVw1q0VK1WyI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/KillPolicyManager$PsiFile;

.field public final synthetic f$1:Lcom/android/server/am/KillPolicyManager$PsiDataType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/KillPolicyManager$PsiFile;Lcom/android/server/am/KillPolicyManager$PsiDataType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$KillPolicyManager$PsiFile$e0x36PTSMlpoRtZaVw1q0VK1WyI;->f$0:Lcom/android/server/am/KillPolicyManager$PsiFile;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$KillPolicyManager$PsiFile$e0x36PTSMlpoRtZaVw1q0VK1WyI;->f$1:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$KillPolicyManager$PsiFile$e0x36PTSMlpoRtZaVw1q0VK1WyI;->f$0:Lcom/android/server/am/KillPolicyManager$PsiFile;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$KillPolicyManager$PsiFile$e0x36PTSMlpoRtZaVw1q0VK1WyI;->f$1:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->lambda$new$0$KillPolicyManager$PsiFile(Lcom/android/server/am/KillPolicyManager$PsiDataType;Ljava/lang/String;)V

    return-void
.end method
