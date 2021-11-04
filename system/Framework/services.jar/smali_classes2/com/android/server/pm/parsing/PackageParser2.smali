.class public Lcom/android/server/pm/parsing/PackageParser2;
.super Ljava/lang/Object;
.source "PackageParser2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/PackageParser2$Callback;
    }
.end annotation


# static fields
.field private static final LOG_PARSE_TIMINGS:Z

.field private static final LOG_PARSE_TIMINGS_THRESHOLD_MS:I = 0x64

.field static final TAG:Ljava/lang/String; = "PackageParser2"


# instance fields
.field protected mCacher:Lcom/android/server/pm/parsing/PackageCacher;

.field private mSharedAppInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedResult:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/pm/parsing/result/ParseTypeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private parsingUtils:Landroid/content/pm/parsing/ParsingPackageUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 92
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V
    .registers 8
    .param p1, "separateProcesses"    # [Ljava/lang/String;
    .param p2, "onlyCoreApps"    # Z
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p4, "cacheDir"    # Ljava/io/File;
    .param p5, "callback"    # Lcom/android/server/pm/parsing/PackageParser2$Callback;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Svc6Ot6mP20gZxXqsV5RuSFu1Lk;->INSTANCE:Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Svc6Ot6mP20gZxXqsV5RuSFu1Lk;

    .line 96
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    .line 116
    if-nez p3, :cond_16

    .line 117
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object p3, v0

    .line 118
    invoke-virtual {p3}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 121
    :cond_16
    if-nez p4, :cond_1a

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1a
    new-instance v0, Lcom/android/server/pm/parsing/PackageCacher;

    invoke-direct {v0, p4}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;)V

    :goto_1f
    iput-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mCacher:Lcom/android/server/pm/parsing/PackageCacher;

    .line 123
    new-instance v0, Landroid/content/pm/parsing/ParsingPackageUtils;

    invoke-direct {v0, p2, p1, p3, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;-><init>(Z[Ljava/lang/String;Landroid/util/DisplayMetrics;Landroid/content/pm/parsing/ParsingPackageUtils$Callback;)V

    iput-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->parsingUtils:Landroid/content/pm/parsing/ParsingPackageUtils;

    .line 126
    new-instance v0, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Z1LNA-uFIqWWTxexnRn70YNNhRw;

    .local v0, "enforcementCallback":Landroid/content/pm/parsing/result/ParseInput$Callback;
    invoke-direct {v0, p0, p5}, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Z1LNA-uFIqWWTxexnRn70YNNhRw;-><init>(Lcom/android/server/pm/parsing/PackageParser2;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    .line 134
    new-instance v1, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$_jLfb1ehczUk0X2MUB2Q0T-RBTI;

    invoke-direct {v1, v0}, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$_jLfb1ehczUk0X2MUB2Q0T-RBTI;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    invoke-static {v1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    .line 135
    return-void
.end method

.method public static forParsingFileWithDefaults()Lcom/android/server/pm/parsing/PackageParser2;
    .registers 8

    .line 64
    nop

    .line 65
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 66
    .local v0, "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    new-instance v7, Lcom/android/server/pm/parsing/PackageParser2;

    new-instance v6, Lcom/android/server/pm/parsing/PackageParser2$1;

    invoke-direct {v6, v0}, Lcom/android/server/pm/parsing/PackageParser2$1;-><init>(Lcom/android/internal/compat/IPlatformCompat;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    return-object v7
.end method

.method static synthetic lambda$new$0()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 97
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 98
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 99
    return-object v0
.end method

.method static synthetic lambda$new$2(Landroid/content/pm/parsing/result/ParseInput$Callback;)Landroid/content/pm/parsing/result/ParseTypeImpl;
    .registers 2
    .param p0, "enforcementCallback"    # Landroid/content/pm/parsing/result/ParseInput$Callback;

    .line 134
    new-instance v0, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-direct {v0, p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 187
    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 188
    return-void
.end method

.method public synthetic lambda$new$1$PackageParser2(Lcom/android/server/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z
    .registers 8
    .param p1, "callback"    # Lcom/android/server/pm/parsing/PackageParser2$Callback;
    .param p2, "changeId"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "targetSdkVersion"    # I

    .line 127
    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 129
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 130
    iput p5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 131
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/pm/parsing/PackageParser2$Callback;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    return v1
.end method

.method public parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 15
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 143
    if-eqz p3, :cond_d

    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mCacher:Lcom/android/server/pm/parsing/PackageCacher;

    if-eqz v0, :cond_d

    .line 144
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCachedResult(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 145
    .local v0, "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    if-eqz v0, :cond_d

    .line 146
    return-object v0

    .line 150
    .end local v0    # "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :cond_d
    sget-boolean v0, Lcom/android/server/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    goto :goto_19

    :cond_18
    move-wide v3, v1

    .line 151
    .local v3, "parseTime":J
    :goto_19
    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    .line 152
    .local v0, "input":Landroid/content/pm/parsing/result/ParseInput;
    iget-object v5, p0, Lcom/android/server/pm/parsing/PackageParser2;->parsingUtils:Landroid/content/pm/parsing/ParsingPackageUtils;

    invoke-virtual {v5, v0, p1, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 153
    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ParsingPackage;>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-nez v6, :cond_8d

    .line 158
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/ParsingPackage;

    invoke-interface {v6}, Landroid/content/pm/parsing/ParsingPackage;->hideAsParsed()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 160
    .local v6, "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    sget-boolean v7, Lcom/android/server/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    if-eqz v7, :cond_45

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 161
    .local v1, "cacheTime":J
    :cond_45
    iget-object v7, p0, Lcom/android/server/pm/parsing/PackageParser2;->mCacher:Lcom/android/server/pm/parsing/PackageCacher;

    if-eqz v7, :cond_4c

    .line 162
    invoke-virtual {v7, p1, p2, v6}, Lcom/android/server/pm/parsing/PackageCacher;->cacheResult(Ljava/io/File;ILcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 164
    :cond_4c
    sget-boolean v7, Lcom/android/server/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    if-eqz v7, :cond_8c

    .line 165
    sub-long v3, v1, v3

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v1

    .line 167
    add-long v7, v3, v1

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-lez v7, :cond_8c

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parse times for \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\': parse="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms, update_cache="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageParser2"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_8c
    return-object v6

    .line 154
    .end local v1    # "cacheTime":J
    .end local v6    # "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :cond_8d
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v2

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    .line 155
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-direct {v1, v2, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
