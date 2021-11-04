.class public final enum Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;
.super Ljava/lang/Enum;
.source "ChimeraCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraCommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PsiFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

.field public static final enum CPU:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

.field public static final enum IO:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

.field public static final enum MEMORY:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 152
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    const-string v1, "IO"

    const/4 v2, 0x0

    const-string v3, "/proc/pressure/io"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;->IO:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    .line 153
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    const-string v1, "MEMORY"

    const/4 v3, 0x1

    const-string v4, "/proc/pressure/memory"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;->MEMORY:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    .line 154
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    const-string v1, "CPU"

    const/4 v4, 0x2

    const-string v5, "/proc/pressure/cpu"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;->CPU:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    .line 151
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    sget-object v5, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;->IO:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;->MEMORY:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;->$VALUES:[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 159
    iput-object p3, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;->mPath:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 151
    const-class v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;
    .registers 1

    .line 151
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;->$VALUES:[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    invoke-virtual {v0}, [Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;->mPath:Ljava/lang/String;

    return-object v0
.end method
