.class public final enum Lcom/android/server/am/KillPolicyManager$PsiFileType;
.super Ljava/lang/Enum;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PsiFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/KillPolicyManager$PsiFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$PsiFileType;

.field public static final enum CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

.field public static final enum IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

.field public static final enum MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1924
    new-instance v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    const-string v1, "IO"

    const/4 v2, 0x0

    const-string v3, "/proc/pressure/io"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/KillPolicyManager$PsiFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 1925
    new-instance v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    const-string v1, "MEMORY"

    const/4 v3, 0x1

    const-string v4, "/proc/pressure/memory"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/KillPolicyManager$PsiFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 1926
    new-instance v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    const-string v1, "CPU"

    const/4 v4, 0x2

    const-string v5, "/proc/pressure/cpu"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/am/KillPolicyManager$PsiFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 1923
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/am/KillPolicyManager$PsiFileType;

    sget-object v5, Lcom/android/server/am/KillPolicyManager$PsiFileType;->IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/am/KillPolicyManager$PsiFileType;->MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$PsiFileType;

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

    .line 1930
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1931
    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->mPath:Ljava/lang/String;

    .line 1932
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$PsiFileType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1923
    const-class v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$PsiFileType;
    .registers 1

    .line 1923
    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$PsiFileType;

    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$PsiFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/KillPolicyManager$PsiFileType;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 2

    .line 1935
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->mPath:Ljava/lang/String;

    return-object v0
.end method
