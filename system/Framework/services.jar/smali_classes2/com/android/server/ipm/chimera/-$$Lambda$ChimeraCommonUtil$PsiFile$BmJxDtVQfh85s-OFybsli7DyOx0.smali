.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraCommonUtil$PsiFile$BmJxDtVQfh85s-OFybsli7DyOx0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;

.field public final synthetic f$1:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraCommonUtil$PsiFile$BmJxDtVQfh85s-OFybsli7DyOx0;->f$0:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;

    iput-object p2, p0, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraCommonUtil$PsiFile$BmJxDtVQfh85s-OFybsli7DyOx0;->f$1:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraCommonUtil$PsiFile$BmJxDtVQfh85s-OFybsli7DyOx0;->f$0:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraCommonUtil$PsiFile$BmJxDtVQfh85s-OFybsli7DyOx0;->f$1:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->lambda$new$0$ChimeraCommonUtil$PsiFile(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;Ljava/lang/String;)V

    return-void
.end method
