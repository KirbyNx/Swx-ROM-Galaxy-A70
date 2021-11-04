.class public Lcom/android/server/enterprise/general/MiscPolicy;
.super Lcom/samsung/android/knox/IMiscPolicy$Stub;
.source "MiscPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;,
        Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;,
        Lcom/android/server/enterprise/general/MiscPolicy$Injector;
    }
.end annotation


# static fields
.field private static final CHROME_BOOKMARKS_URI:Landroid/net/Uri;

.field private static final CREDENTIALS_FAILS_COUNT:Ljava/lang/String; = "credentials_fails_count"

.field private static final FONT_NOTSUPPORT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font.droidserifitalic"

.field private static final FONT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font."

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

.field private static final SBROWSER_PROJECTION:[Ljava/lang/String;

.field private static final SBROWSER_PROJECTION_ID_INDEX:I = 0x0

.field private static final SETTINGS_APP_PKGNAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "MiscPolicy"


# instance fields
.field private final ACTION_USER_ADDED:Ljava/lang/String;

.field private final MAX_PORT_NUMBER:I

.field private final MIN_PORT_NUMBER:I

.field private credentialsFailsCount:I

.field private credentialsFailsState:I

.field private mCon:Lcom/android/server/ConnectivityService;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFontSizes:[F

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

.field private mStartNFCHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 196
    nop

    .line 197
    const-string v0, "content://com.sec.android.app.sbrowser.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    .line 198
    nop

    .line 199
    const-string v0, "content://com.android.partnerbookmarks/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    .line 200
    const-string v0, "_id"

    const-string/jumbo v1, "url"

    const-string/jumbo v2, "title"

    const-string v3, "favicon"

    const-string v4, "editable"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_PROJECTION:[Ljava/lang/String;

    .line 2010
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 233
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$Injector;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$Injector;)V
    .registers 4
    .param p1, "injector"    # Lcom/android/server/enterprise/general/MiscPolicy$Injector;

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 185
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->MIN_PORT_NUMBER:I

    .line 189
    const v1, 0xffff

    iput v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->MAX_PORT_NUMBER:I

    .line 191
    const-string v1, "android.intent.action.USER_ADDED"

    iput-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->ACTION_USER_ADDED:Ljava/lang/String;

    .line 212
    iput v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsCount:I

    .line 213
    iput v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsState:I

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 238
    iget-object v0, p1, Lcom/android/server/enterprise/general/MiscPolicy$Injector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {p1}, Lcom/android/server/enterprise/general/MiscPolicy$Injector;->getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 240
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 241
    return-void
.end method

.method private GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
    .registers 3

    .line 1301
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    if-nez v0, :cond_c

    .line 1302
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 1304
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/general/MiscPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/general/MiscPolicy;
    .param p1, "x1"    # I

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/general/MiscPolicy;

    .line 171
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addBookmark(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .line 964
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 965
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    .line 967
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_17

    .line 968
    const-string v2, "MiscPolicy"

    const-string v4, "addBookmark() - Could not create context for current user!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return v3

    .line 972
    :cond_17
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 973
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmarkToChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 974
    .local v4, "bookmarkAddedtoChrome":Z
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmarkToSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 977
    .local v5, "bookmarkAddedtoSBrowser":Z
    const/4 v6, 0x1

    if-nez v5, :cond_30

    .line 979
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmarkToAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v7

    if-nez v7, :cond_2e

    if-eqz v4, :cond_2f

    :cond_2e
    move v3, v6

    :cond_2f
    return v3

    .line 982
    :cond_30
    return v6
.end method

.method private addBookmarkToAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 21
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .line 883
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "MiscPolicy"

    const/4 v5, 0x0

    .line 884
    .local v5, "result":Z
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 885
    .local v6, "browserUri":Landroid/net/Uri;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 886
    .local v7, "creationTime":J
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v9, v0

    .line 887
    .local v9, "cv":Landroid/content/ContentValues;
    const/4 v10, 0x0

    .line 888
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 892
    .local v11, "token":J
    :try_start_1f
    sget-object v0, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v6, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 893
    const/4 v0, 0x0

    if-nez v10, :cond_38

    .line 894
    const-string v13, "addBookmarkToAndroidBrowser() - No provider found!!!"

    invoke-static {v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_2e} :catch_f7
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_2e} :catch_da
    .catchall {:try_start_1f .. :try_end_2e} :catchall_d8

    .line 895
    nop

    .line 951
    if-eqz v10, :cond_34

    .line 952
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 953
    :cond_34
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 895
    return v0

    .line 897
    :cond_38
    :try_start_38
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 899
    .local v13, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3d
    if-ge v14, v13, :cond_51

    .line 902
    invoke-interface {v10, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 903
    const/4 v15, 0x5

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4e

    .line 906
    goto :goto_51

    .line 899
    :cond_4e
    add-int/lit8 v14, v14, 0x1

    goto :goto_3d

    .line 912
    .end local v14    # "i":I
    :cond_51
    :goto_51
    const-string/jumbo v14, "title"

    invoke-virtual {v9, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string/jumbo v14, "url"

    invoke-virtual {v9, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v14, "created"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 915
    const-string v14, "bookmark"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 916
    const-string v14, "date"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    sget-object v14, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v14, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8b

    .line 918
    const-string/jumbo v14, "thumbnail"

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/general/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 920
    :cond_8b
    const/4 v14, 0x0

    .line 921
    .local v14, "visits":I
    if-lez v13, :cond_94

    .line 927
    const/4 v15, 0x2

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_93} :catch_f7
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_93} :catch_da
    .catchall {:try_start_38 .. :try_end_93} :catchall_d8

    move v14, v15

    .line 933
    :cond_94
    const-string/jumbo v15, "visits"

    if-nez v13, :cond_a3

    .line 934
    add-int/lit8 v0, v14, 0x3

    :try_start_9b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_aa

    .line 936
    :cond_a3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    :goto_aa
    const-string v0, "addBookmarkToAndroidBrowser() - Inserting bookmark into database"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {v1, v6, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 940
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_d0

    .line 941
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBookmarkToAndroidBrowser() - uri: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v1, 0x1

    move v5, v1

    .end local v5    # "result":Z
    .local v1, "result":Z
    goto :goto_d5

    .line 944
    .end local v1    # "result":Z
    .restart local v5    # "result":Z
    :cond_d0
    const-string v1, "addBookmarkToAndroidBrowser() - uri is null!"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9b .. :try_end_d5} :catch_f7
    .catch Ljava/lang/IllegalStateException; {:try_start_9b .. :try_end_d5} :catch_da
    .catchall {:try_start_9b .. :try_end_d5} :catchall_d8

    .line 951
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v13    # "count":I
    .end local v14    # "visits":I
    :goto_d5
    if-eqz v10, :cond_103

    .line 952
    goto :goto_100

    .line 951
    :catchall_d8
    move-exception v0

    goto :goto_108

    .line 948
    :catch_da
    move-exception v0

    .line 949
    .local v0, "ex":Ljava/lang/IllegalStateException;
    :try_start_db
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Android provider error: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    nop

    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    if-eqz v10, :cond_103

    .line 952
    goto :goto_100

    .line 946
    :catch_f7
    move-exception v0

    .line 947
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "Android provider error - unknown uri"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catchall {:try_start_db .. :try_end_fd} :catchall_d8

    .line 951
    nop

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    if-eqz v10, :cond_103

    .line 952
    :goto_100
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 953
    :cond_103
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 954
    nop

    .line 956
    return v5

    .line 951
    :goto_108
    if-eqz v10, :cond_10d

    .line 952
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 953
    :cond_10d
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 954
    throw v0
.end method

.method private addBookmarkToChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 30
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 813
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "MiscPolicy"

    const/4 v5, 0x0

    .line 816
    .local v5, "result":Z
    const/4 v6, 0x1

    .line 817
    .local v6, "BOOKMARK_TYPE_BOOKMARK":I
    const/4 v7, 0x2

    .line 818
    .local v7, "BOOKMARK_TYPE_FOLDER":I
    const-wide/16 v8, 0x1

    .line 819
    .local v8, "BOOKMARK_PARENT_FOLDER_ID":J
    const-string v10, "Samsung Mobile"

    .line 820
    .local v10, "BookmarkTitle":Ljava/lang/String;
    const-wide/16 v11, 0x2

    .line 821
    .local v11, "startID":J
    const/4 v13, 0x0

    .line 823
    .local v13, "inserted_uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 825
    .local v14, "token":J
    :try_start_16
    sget-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_18} :catch_16f
    .catchall {:try_start_16 .. :try_end_18} :catchall_163

    move/from16 v16, v6

    .end local v6    # "BOOKMARK_TYPE_BOOKMARK":I
    .local v16, "BOOKMARK_TYPE_BOOKMARK":I
    const/4 v6, 0x0

    :try_start_1b
    invoke-virtual {v1, v0, v6, v6, v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1f} :catch_157
    .catchall {:try_start_1b .. :try_end_1f} :catchall_14b

    move-object v6, v0

    .line 826
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_42

    .line 827
    :try_start_22
    const-string v0, "addBookmarkToChrome cursor is null"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_27} :catch_37
    .catchall {:try_start_22 .. :try_end_27} :catchall_2c

    .line 828
    nop

    .line 876
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 828
    return v5

    .line 876
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_2c
    move-exception v0

    move/from16 v17, v5

    move/from16 v19, v7

    move-object/from16 v24, v10

    move/from16 v6, v16

    goto/16 :goto_18b

    .line 873
    :catch_37
    move-exception v0

    move/from16 v17, v5

    move/from16 v19, v7

    move-object/from16 v24, v10

    move/from16 v6, v16

    goto/16 :goto_17a

    .line 830
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_42
    :try_start_42
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v11, v0

    .line 831
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_4a} :catch_157
    .catchall {:try_start_42 .. :try_end_4a} :catchall_14b

    .line 832
    const-wide/16 v17, 0x0

    cmp-long v0, v11, v17

    move/from16 v17, v5

    .end local v5    # "result":Z
    .local v17, "result":Z
    const-string/jumbo v5, "type"

    move-object/from16 v18, v6

    .end local v6    # "cursor":Landroid/database/Cursor;
    .local v18, "cursor":Landroid/database/Cursor;
    const-string/jumbo v6, "parent"

    move/from16 v19, v7

    .end local v7    # "BOOKMARK_TYPE_FOLDER":I
    .local v19, "BOOKMARK_TYPE_FOLDER":I
    const-string/jumbo v7, "title"

    const-wide/16 v20, 0x1

    move-wide/from16 v22, v8

    .end local v8    # "BOOKMARK_PARENT_FOLDER_ID":J
    .local v22, "BOOKMARK_PARENT_FOLDER_ID":J
    const-string v8, "_id"

    if-nez v0, :cond_c5

    .line 833
    const-wide/16 v22, 0x0

    .line 834
    const/4 v9, 0x2

    .line 835
    .end local v16    # "BOOKMARK_TYPE_BOOKMARK":I
    .local v9, "BOOKMARK_TYPE_BOOKMARK":I
    :try_start_68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v16, v0

    .line 836
    .local v16, "opBookmark":Landroid/content/ContentValues;
    add-long v24, v11, v20

    move-wide/from16 v11, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_68 .. :try_end_77} :catch_bd
    .catchall {:try_start_68 .. :try_end_77} :catchall_b5

    move-object/from16 v24, v10

    move-object/from16 v10, v16

    .end local v16    # "opBookmark":Landroid/content/ContentValues;
    .local v10, "opBookmark":Landroid/content/ContentValues;
    .local v24, "BookmarkTitle":Ljava/lang/String;
    :try_start_7b
    invoke-virtual {v10, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 837
    const-string v0, "Samsung Mobile"

    invoke-virtual {v10, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 839
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_91} :catch_af
    .catchall {:try_start_7b .. :try_end_91} :catchall_a9

    .line 841
    :try_start_91
    sget-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_97} :catch_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_91 .. :try_end_97} :catch_af
    .catchall {:try_start_91 .. :try_end_97} :catchall_a9

    .line 845
    .end local v13    # "inserted_uri":Landroid/net/Uri;
    .local v0, "inserted_uri":Landroid/net/Uri;
    move-object v13, v0

    goto :goto_a3

    .line 842
    .end local v0    # "inserted_uri":Landroid/net/Uri;
    .restart local v13    # "inserted_uri":Landroid/net/Uri;
    :catch_99
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/Exception;
    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/Exception;
    .local v16, "e":Ljava/lang/Exception;
    :try_start_9c
    const-string v0, "Exception creating parent folder"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9c .. :try_end_a1} :catch_af
    .catchall {:try_start_9c .. :try_end_a1} :catchall_a9

    .line 844
    const/4 v0, 0x0

    move-object v13, v0

    .line 846
    .end local v16    # "e":Ljava/lang/Exception;
    :goto_a3
    const-wide/16 v22, 0x1

    .line 847
    const/4 v0, 0x1

    move/from16 v16, v0

    .end local v9    # "BOOKMARK_TYPE_BOOKMARK":I
    .local v0, "BOOKMARK_TYPE_BOOKMARK":I
    goto :goto_c7

    .line 876
    .end local v0    # "BOOKMARK_TYPE_BOOKMARK":I
    .end local v10    # "opBookmark":Landroid/content/ContentValues;
    .end local v18    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "BOOKMARK_TYPE_BOOKMARK":I
    :catchall_a9
    move-exception v0

    move v6, v9

    move-wide/from16 v8, v22

    goto/16 :goto_18b

    .line 873
    :catch_af
    move-exception v0

    move v6, v9

    move-wide/from16 v8, v22

    goto/16 :goto_17a

    .line 876
    .end local v24    # "BookmarkTitle":Ljava/lang/String;
    .local v10, "BookmarkTitle":Ljava/lang/String;
    :catchall_b5
    move-exception v0

    move-object/from16 v24, v10

    move v6, v9

    move-wide/from16 v8, v22

    .end local v10    # "BookmarkTitle":Ljava/lang/String;
    .restart local v24    # "BookmarkTitle":Ljava/lang/String;
    goto/16 :goto_18b

    .line 873
    .end local v24    # "BookmarkTitle":Ljava/lang/String;
    .restart local v10    # "BookmarkTitle":Ljava/lang/String;
    :catch_bd
    move-exception v0

    move-object/from16 v24, v10

    move v6, v9

    move-wide/from16 v8, v22

    .end local v10    # "BookmarkTitle":Ljava/lang/String;
    .restart local v24    # "BookmarkTitle":Ljava/lang/String;
    goto/16 :goto_17a

    .line 832
    .end local v9    # "BOOKMARK_TYPE_BOOKMARK":I
    .end local v24    # "BookmarkTitle":Ljava/lang/String;
    .restart local v10    # "BookmarkTitle":Ljava/lang/String;
    .local v16, "BOOKMARK_TYPE_BOOKMARK":I
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :cond_c5
    move-object/from16 v24, v10

    .line 850
    .end local v10    # "BookmarkTitle":Ljava/lang/String;
    .restart local v24    # "BookmarkTitle":Ljava/lang/String;
    :goto_c7
    if-eqz v2, :cond_124

    if-eqz v3, :cond_124

    .line 851
    :try_start_cb
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v9, v0

    .line 852
    .local v9, "opBookmark":Landroid/content/ContentValues;
    add-long v20, v11, v20

    move-wide/from16 v11, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 853
    invoke-virtual {v9, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string/jumbo v0, "url"

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 856
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_f3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cb .. :try_end_f3} :catch_11e
    .catchall {:try_start_cb .. :try_end_f3} :catchall_117

    .line 858
    :try_start_f3
    sget-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f9} :catch_fb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f3 .. :try_end_f9} :catch_11e
    .catchall {:try_start_f3 .. :try_end_f9} :catchall_117

    .line 865
    .end local v13    # "inserted_uri":Landroid/net/Uri;
    .local v0, "inserted_uri":Landroid/net/Uri;
    move-object v13, v0

    goto :goto_124

    .line 860
    .end local v0    # "inserted_uri":Landroid/net/Uri;
    .restart local v13    # "inserted_uri":Landroid/net/Uri;
    :catch_fb
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    :try_start_fc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateBookmarks : insert bookmark items to db. Exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 861
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v5, 0x0

    move-object v13, v5

    .end local v13    # "inserted_uri":Landroid/net/Uri;
    .local v5, "inserted_uri":Landroid/net/Uri;
    goto :goto_124

    .line 876
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "inserted_uri":Landroid/net/Uri;
    .end local v9    # "opBookmark":Landroid/content/ContentValues;
    .end local v18    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "inserted_uri":Landroid/net/Uri;
    :catchall_117
    move-exception v0

    move/from16 v6, v16

    move-wide/from16 v8, v22

    goto/16 :goto_18b

    .line 873
    :catch_11e
    move-exception v0

    move/from16 v6, v16

    move-wide/from16 v8, v22

    goto :goto_17a

    .line 867
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :cond_124
    :goto_124
    if-eqz v13, :cond_140

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addBookmarkToChrome() - uri: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v5, 0x1

    .end local v17    # "result":Z
    .local v5, "result":Z
    goto :goto_147

    .line 871
    .end local v5    # "result":Z
    .restart local v17    # "result":Z
    :cond_140
    const-string v0, "addBookmarkToChrome() - uri is null!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fc .. :try_end_145} :catch_11e
    .catchall {:try_start_fc .. :try_end_145} :catchall_117

    move/from16 v5, v17

    .line 876
    .end local v17    # "result":Z
    .end local v18    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "result":Z
    :goto_147
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 877
    goto :goto_189

    .line 876
    .end local v19    # "BOOKMARK_TYPE_FOLDER":I
    .end local v22    # "BOOKMARK_PARENT_FOLDER_ID":J
    .end local v24    # "BookmarkTitle":Ljava/lang/String;
    .restart local v7    # "BOOKMARK_TYPE_FOLDER":I
    .restart local v8    # "BOOKMARK_PARENT_FOLDER_ID":J
    .restart local v10    # "BookmarkTitle":Ljava/lang/String;
    :catchall_14b
    move-exception v0

    move/from16 v17, v5

    move/from16 v19, v7

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v6, v16

    .end local v5    # "result":Z
    .end local v7    # "BOOKMARK_TYPE_FOLDER":I
    .end local v8    # "BOOKMARK_PARENT_FOLDER_ID":J
    .end local v10    # "BookmarkTitle":Ljava/lang/String;
    .restart local v17    # "result":Z
    .restart local v19    # "BOOKMARK_TYPE_FOLDER":I
    .restart local v22    # "BOOKMARK_PARENT_FOLDER_ID":J
    .restart local v24    # "BookmarkTitle":Ljava/lang/String;
    goto :goto_18b

    .line 873
    .end local v17    # "result":Z
    .end local v19    # "BOOKMARK_TYPE_FOLDER":I
    .end local v22    # "BOOKMARK_PARENT_FOLDER_ID":J
    .end local v24    # "BookmarkTitle":Ljava/lang/String;
    .restart local v5    # "result":Z
    .restart local v7    # "BOOKMARK_TYPE_FOLDER":I
    .restart local v8    # "BOOKMARK_PARENT_FOLDER_ID":J
    .restart local v10    # "BookmarkTitle":Ljava/lang/String;
    :catch_157
    move-exception v0

    move/from16 v17, v5

    move/from16 v19, v7

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v6, v16

    .end local v5    # "result":Z
    .end local v7    # "BOOKMARK_TYPE_FOLDER":I
    .end local v8    # "BOOKMARK_PARENT_FOLDER_ID":J
    .end local v10    # "BookmarkTitle":Ljava/lang/String;
    .restart local v17    # "result":Z
    .restart local v19    # "BOOKMARK_TYPE_FOLDER":I
    .restart local v22    # "BOOKMARK_PARENT_FOLDER_ID":J
    .restart local v24    # "BookmarkTitle":Ljava/lang/String;
    goto :goto_17a

    .line 876
    .end local v16    # "BOOKMARK_TYPE_BOOKMARK":I
    .end local v17    # "result":Z
    .end local v19    # "BOOKMARK_TYPE_FOLDER":I
    .end local v22    # "BOOKMARK_PARENT_FOLDER_ID":J
    .end local v24    # "BookmarkTitle":Ljava/lang/String;
    .restart local v5    # "result":Z
    .local v6, "BOOKMARK_TYPE_BOOKMARK":I
    .restart local v7    # "BOOKMARK_TYPE_FOLDER":I
    .restart local v8    # "BOOKMARK_PARENT_FOLDER_ID":J
    .restart local v10    # "BookmarkTitle":Ljava/lang/String;
    :catchall_163
    move-exception v0

    move/from16 v17, v5

    move/from16 v16, v6

    move/from16 v19, v7

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    .end local v5    # "result":Z
    .end local v6    # "BOOKMARK_TYPE_BOOKMARK":I
    .end local v7    # "BOOKMARK_TYPE_FOLDER":I
    .end local v8    # "BOOKMARK_PARENT_FOLDER_ID":J
    .end local v10    # "BookmarkTitle":Ljava/lang/String;
    .restart local v16    # "BOOKMARK_TYPE_BOOKMARK":I
    .restart local v17    # "result":Z
    .restart local v19    # "BOOKMARK_TYPE_FOLDER":I
    .restart local v22    # "BOOKMARK_PARENT_FOLDER_ID":J
    .restart local v24    # "BookmarkTitle":Ljava/lang/String;
    goto :goto_18b

    .line 873
    .end local v16    # "BOOKMARK_TYPE_BOOKMARK":I
    .end local v17    # "result":Z
    .end local v19    # "BOOKMARK_TYPE_FOLDER":I
    .end local v22    # "BOOKMARK_PARENT_FOLDER_ID":J
    .end local v24    # "BookmarkTitle":Ljava/lang/String;
    .restart local v5    # "result":Z
    .restart local v6    # "BOOKMARK_TYPE_BOOKMARK":I
    .restart local v7    # "BOOKMARK_TYPE_FOLDER":I
    .restart local v8    # "BOOKMARK_PARENT_FOLDER_ID":J
    .restart local v10    # "BookmarkTitle":Ljava/lang/String;
    :catch_16f
    move-exception v0

    move/from16 v17, v5

    move/from16 v16, v6

    move/from16 v19, v7

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    .line 874
    .end local v5    # "result":Z
    .end local v7    # "BOOKMARK_TYPE_FOLDER":I
    .end local v10    # "BookmarkTitle":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    .restart local v17    # "result":Z
    .restart local v19    # "BOOKMARK_TYPE_FOLDER":I
    .restart local v24    # "BookmarkTitle":Ljava/lang/String;
    :goto_17a
    :try_start_17a
    const-string v5, "Chrome provider error - unknown uri"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17f
    .catchall {:try_start_17a .. :try_end_17f} :catchall_18a

    .line 876
    nop

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 877
    move/from16 v16, v6

    move-wide/from16 v22, v8

    move/from16 v5, v17

    .line 879
    .end local v6    # "BOOKMARK_TYPE_BOOKMARK":I
    .end local v8    # "BOOKMARK_PARENT_FOLDER_ID":J
    .end local v17    # "result":Z
    .restart local v5    # "result":Z
    .restart local v16    # "BOOKMARK_TYPE_BOOKMARK":I
    .restart local v22    # "BOOKMARK_PARENT_FOLDER_ID":J
    :goto_189
    return v5

    .line 876
    .end local v5    # "result":Z
    .end local v16    # "BOOKMARK_TYPE_BOOKMARK":I
    .end local v22    # "BOOKMARK_PARENT_FOLDER_ID":J
    .restart local v6    # "BOOKMARK_TYPE_BOOKMARK":I
    .restart local v8    # "BOOKMARK_PARENT_FOLDER_ID":J
    .restart local v17    # "result":Z
    :catchall_18a
    move-exception v0

    :goto_18b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 877
    throw v0
.end method

.method private addBookmarkToSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 788
    const-string v0, "MiscPolicy"

    const/4 v1, 0x0

    .line 789
    .local v1, "result":Z
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 791
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 793
    .local v3, "token":J
    :try_start_c
    const-string/jumbo v5, "title"

    invoke-virtual {v2, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string/jumbo v5, "url"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v5, "editable"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    sget-object v5, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 797
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_45

    .line 798
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addBookmarkToSBrowser() - uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v0, 0x1

    move v1, v0

    .end local v1    # "result":Z
    .local v0, "result":Z
    goto :goto_4a

    .line 801
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :cond_45
    const-string v6, "addBookmarkToSBrowser() - uri is null!"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_4a} :catch_4d
    .catchall {:try_start_c .. :try_end_4a} :catchall_4b

    .line 806
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_4a
    goto :goto_54

    :catchall_4b
    move-exception v0

    goto :goto_59

    .line 803
    :catch_4d
    move-exception v5

    .line 804
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_4e
    const-string v6, "Sbrowser provider error - unknown uri"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_4b

    .line 806
    nop

    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_54
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    nop

    .line 809
    return v1

    .line 806
    :goto_59
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    throw v0
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .registers 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 742
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    return-void
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .registers 4
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .line 990
    if-nez p0, :cond_4

    .line 991
    const/4 v0, 0x0

    return-object v0

    .line 994
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 995
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 996
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private clearAuthConfigFromDb()V
    .registers 4

    .line 2169
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "GlobalProxyAuthTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 2170
    return-void
.end method

.method private declared-synchronized clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    monitor-enter p0

    .line 2429
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "globalProxy"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_11
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_11} :catch_59
    .catchall {:try_start_2 .. :try_end_11} :catchall_57

    if-nez v1, :cond_15

    .line 2431
    monitor-exit p0

    return v0

    .line 2436
    :cond_15
    nop

    .line 2438
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 2440
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "globalProxy"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2444
    new-instance v1, Landroid/net/ProxyInfo;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, v2, v0, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2446
    .local v1, "emptyProxy":Landroid/net/ProxyInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_57

    .line 2448
    .local v2, "token":J
    :try_start_38
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4, v1}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_50

    .line 2450
    :try_start_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2451
    nop

    .line 2454
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearAuthConfigFromDb()V

    .line 2457
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->clearCaches(Z)V
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_57

    .line 2458
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2450
    .end local p0    # "this":Lcom/android/server/enterprise/general/MiscPolicy;
    :catchall_50
    move-exception v0

    :try_start_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2451
    throw v0
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_57

    .line 2460
    .end local v1    # "emptyProxy":Landroid/net/ProxyInfo;
    .end local v2    # "token":J
    :cond_55
    monitor-exit p0

    return v0

    .line 2428
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catchall_57
    move-exception p1

    goto :goto_63

    .line 2433
    .restart local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catch_59
    move-exception v1

    .line 2434
    .local v1, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :try_start_5a
    const-string v2, "MiscPolicy"

    const-string v3, "clearGlobalProxyEnable.SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_57

    .line 2435
    monitor-exit p0

    return v0

    .line 2428
    .end local v1    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :goto_63
    monitor-exit p0

    throw p1
.end method

.method private convertAuthConfigToContentValues(ILcom/samsung/android/knox/net/AuthConfig;)Landroid/content/ContentValues;
    .registers 6
    .param p1, "adminUid"    # I
    .param p2, "config"    # Lcom/samsung/android/knox/net/AuthConfig;

    .line 2092
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2093
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2094
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "host"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "port"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2096
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    return-object v0
.end method

.method private createProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;
    .registers 6
    .param p1, "properties"    # Lcom/samsung/android/knox/net/ProxyProperties;

    .line 2078
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2079
    .local v0, "hasPac":Z
    if-nez v0, :cond_26

    .line 2080
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v1

    .line 2081
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v2

    .line 2082
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1d

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_21

    .line 2083
    :cond_1d
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v3

    .line 2080
    :goto_21
    invoke-static {v1, v2, v3}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v1

    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_2f

    .line 2085
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_26
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .line 2087
    .restart local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    :goto_2f
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    .line 2088
    return-object v1
.end method

.method private enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 278
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 278
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 280
    return-object p1
.end method

.method private enforceMDMAppCaller()V
    .registers 3

    .line 2247
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SET_PROXY_CREDENTIAL_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 2250
    return-void

    .line 2248
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not have required permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceOldSecurityOrNewBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 263
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 263
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndClipboardPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 289
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 304
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 273
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 273
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 299
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 299
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndOldSecurityOrNewInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 294
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 284
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 284
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndWriteSettingsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 268
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 258
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemProcess()V
    .registers 3

    .line 2238
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2241
    return-void

    .line 2239
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private floatToIndex(F)I
    .registers 8
    .param p1, "val"    # F

    .line 1844
    const/4 v0, -0x1

    .line 1845
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 1846
    .local v1, "thisVal":F
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 1848
    .local v2, "lastVal":F
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_8
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v5, v4

    if-ge v3, v5, :cond_20

    .line 1849
    aget v1, v4, v3

    .line 1850
    sub-float v4, v1, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1c

    .line 1851
    add-int/lit8 v4, v3, -0x1

    return v4

    .line 1853
    :cond_1c
    move v2, v1

    .line 1848
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1855
    .end local v3    # "i":I
    :cond_20
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 1856
    .end local v0    # "ret":I
    .local v3, "ret":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "floatToIndex(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MiscPolicy"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return v3
.end method

.method private getAuthConfigFromDb()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation

    .line 2173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2176
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/AuthConfig;>;"
    const-string/jumbo v1, "host"

    const-string/jumbo v2, "port"

    const-string/jumbo v3, "username"

    const-string/jumbo v4, "password"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 2183
    .local v5, "returnColumns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "GlobalProxyAuthTable"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 2186
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v6, :cond_21

    .line 2187
    return-object v0

    .line 2190
    :cond_21
    const/4 v7, 0x0

    .local v7, "hostDatabase":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "userDatabase":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2191
    .local v9, "passDatabase":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2193
    .local v10, "portDatabase":Ljava/lang/Integer;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_29
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_52

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 2194
    .local v12, "cv":Landroid/content/ContentValues;
    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2195
    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 2196
    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2197
    invoke-virtual {v12, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2199
    new-instance v13, Lcom/samsung/android/knox/net/AuthConfig;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v13, v7, v14, v8, v9}, Lcom/samsung/android/knox/net/AuthConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2201
    .local v13, "config":Lcom/samsung/android/knox/net/AuthConfig;
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2202
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "config":Lcom/samsung/android/knox/net/AuthConfig;
    goto :goto_29

    .line 2203
    :cond_52
    return-object v0
.end method

.method private getConnectivityManagerService()Lcom/android/server/ConnectivityService;
    .registers 2

    .line 2021
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Lcom/android/server/ConnectivityService;

    if-nez v0, :cond_e

    .line 2022
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Lcom/android/server/ConnectivityService;

    .line 2024
    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 248
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 250
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private declared-synchronized getGlobalProxy(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    monitor-enter p0

    .line 2382
    const/4 v0, 0x0

    .line 2384
    .local v0, "properties":Lcom/samsung/android/knox/net/ProxyProperties;
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 2385
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->getGlobalProxyFromSettings()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 2386
    .local v1, "proxy":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_5c

    .line 2387
    new-instance v2, Lcom/samsung/android/knox/net/ProxyProperties;

    invoke-direct {v2}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    move-object v0, v2

    .line 2388
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 2389
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/ProxyProperties;->setPacFileUrl(Ljava/lang/String;)V

    goto :goto_3c

    .line 2391
    .end local p0    # "this":Lcom/android/server/enterprise/general/MiscPolicy;
    :cond_2e
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    .line 2392
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    .line 2394
    :goto_3c
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 2395
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    .line 2397
    :cond_4d
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getAuthConfigFromDb()Ljava/util/List;

    move-result-object v2

    .line 2398
    .local v2, "configList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/AuthConfig;>;"
    if-eqz v2, :cond_5c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 2399
    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/ProxyProperties;->setAuthConfigList(Ljava/util/List;)V
    :try_end_5c
    .catchall {:try_start_2 .. :try_end_5c} :catchall_5e

    .line 2403
    .end local v1    # "proxy":Landroid/net/ProxyInfo;
    .end local v2    # "configList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/AuthConfig;>;"
    :cond_5c
    monitor-exit p0

    return-object v0

    .line 2381
    .end local v0    # "properties":Lcom/samsung/android/knox/net/ProxyProperties;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .line 1127
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_12

    .line 1128
    nop

    .line 1129
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1128
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 1131
    :cond_12
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;

    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, "secure":Z
    move-object v1, p1

    .line 757
    .local v1, "compareString":Ljava/lang/String;
    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "https://"

    if-eqz v3, :cond_14

    .line 758
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    .line 759
    :cond_14
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 760
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 761
    const/4 v0, 0x1

    .line 763
    :cond_21
    :goto_21
    const-string/jumbo v3, "www."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 764
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 766
    :cond_2f
    const/4 v5, 0x0

    .line 767
    .local v5, "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "url = "

    if-eqz v0, :cond_65

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 769
    .end local v5    # "whereClause":Ljava/lang/StringBuilder;
    .local v2, "whereClause":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 770
    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_ad

    .line 773
    .end local v2    # "whereClause":Ljava/lang/StringBuilder;
    .restart local v5    # "whereClause":Ljava/lang/StringBuilder;
    :cond_65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    .end local v5    # "whereClause":Ljava/lang/StringBuilder;
    .local v4, "whereClause":Ljava/lang/StringBuilder;
    invoke-static {v4, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 775
    invoke-static {v4}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 776
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, "wwwString":Ljava/lang/String;
    invoke-static {v4, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 778
    invoke-static {v4}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 780
    invoke-static {v4}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 781
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move-object v2, v4

    .line 783
    .end local v3    # "wwwString":Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/StringBuilder;
    .restart local v2    # "whereClause":Ljava/lang/StringBuilder;
    :goto_ad
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method private isAdminLockScreenStringSet(I)I
    .registers 11
    .param p1, "userId"    # I

    .line 1181
    const-string/jumbo v0, "lockscreenstring"

    const-string v1, "adminUid"

    :try_start_5
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    .line 1185
    .local v2, "columns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "MISC"

    invoke-virtual {v3, v4, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 1188
    .local v3, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1189
    .local v5, "cv":Landroid/content/ContentValues;
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1190
    .local v6, "cvInteger":Ljava/lang/Integer;
    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3c

    .line 1191
    nop

    .line 1192
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1191
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_3e

    return v0

    .line 1194
    .end local v5    # "cv":Landroid/content/ContentValues;
    :cond_3c
    goto :goto_15

    .line 1196
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6    # "cvInteger":Ljava/lang/Integer;
    :cond_3d
    goto :goto_3f

    .line 1195
    :catch_3e
    move-exception v0

    .line 1197
    :goto_3f
    const/4 v0, -0x1

    return v0
.end method

.method private isChinaModel()Z
    .registers 3

    .line 2513
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CountryISO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2514
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isFolderModel(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 2509
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isGlobalProxySetForAdmin(II)Z
    .registers 6
    .param p1, "callerUid"    # I
    .param p2, "containerId"    # I

    .line 2064
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string/jumbo v2, "globalProxy"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_b} :catch_10

    if-eqz v0, :cond_f

    .line 2066
    const/4 v0, 0x1

    return v0

    .line 2071
    :cond_f
    goto :goto_19

    .line 2068
    :catch_10
    move-exception v0

    .line 2070
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v1, "MiscPolicy"

    const-string/jumbo v2, "setGlobalProxy.SettingNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    .end local v0    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method private isRingToneEntryExist(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)J
    .registers 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "aRingToneAbsolutePath"    # Ljava/lang/String;
    .param p3, "aUri"    # Landroid/net/Uri;

    .line 396
    const-string v1, "MiscPolicy"

    const-wide/16 v2, -0x1

    .line 398
    .local v2, "lRingToneEntryId":J
    const/4 v4, 0x0

    .line 400
    .local v4, "lCursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 402
    .local v5, "token":J
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data=\'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_72
    .catchall {:try_start_9 .. :try_end_13} :catchall_6d

    move-object/from16 v7, p2

    :try_start_15
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "lWhereClause":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isRingToneEntryExist : whereClause :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_36} :catch_6a
    .catchall {:try_start_15 .. :try_end_36} :catchall_67

    .line 405
    move-object v14, p0

    :try_start_37
    iget-object v8, v14, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "_id"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p3

    move-object v11, v0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v4, v8

    .line 409
    if-eqz v4, :cond_5e

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_5e

    .line 410
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 411
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5d} :catch_65
    .catchall {:try_start_37 .. :try_end_5d} :catchall_9a

    move-wide v2, v8

    .line 417
    .end local v0    # "lWhereClause":Ljava/lang/String;
    :cond_5e
    if-eqz v4, :cond_80

    .line 418
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 419
    const/4 v4, 0x0

    goto :goto_80

    .line 414
    :catch_65
    move-exception v0

    goto :goto_76

    .line 417
    :catchall_67
    move-exception v0

    move-object v14, p0

    goto :goto_9b

    .line 414
    :catch_6a
    move-exception v0

    move-object v14, p0

    goto :goto_76

    .line 417
    :catchall_6d
    move-exception v0

    move-object v14, p0

    move-object/from16 v7, p2

    goto :goto_9b

    .line 414
    :catch_72
    move-exception v0

    move-object v14, p0

    move-object/from16 v7, p2

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    :goto_76
    :try_start_76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_9a

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_80

    .line 418
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 419
    const/4 v0, 0x0

    move-object v4, v0

    .line 421
    :cond_80
    :goto_80
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 422
    nop

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRingToneEntryExist : return "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-wide v2

    .line 417
    :catchall_9a
    move-exception v0

    :goto_9b
    if-eqz v4, :cond_a1

    .line 418
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 419
    const/4 v4, 0x0

    .line 421
    :cond_a1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 422
    throw v0
.end method

.method private isSupportSettings2()Z
    .registers 7

    .line 2473
    const/4 v0, 0x0

    .line 2474
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2476
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_7
    const-string v2, "com.android.settings"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2477
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_26

    .line 2478
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2479
    .local v3, "meta_data":Landroid/os/Bundle;
    const-string/jumbo v4, "settings_apk_name"

    const-string/jumbo v5, "none"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SecSettings2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_27

    if-eqz v4, :cond_26

    .line 2480
    const/4 v0, 0x1

    .line 2485
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "meta_data":Landroid/os/Bundle;
    :cond_26
    goto :goto_30

    .line 2483
    :catch_27
    move-exception v2

    .line 2484
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MiscPolicy"

    const-string/jumbo v4, "isSupportSettings2()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2486
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_30
    return v0
.end method

.method private makeStartNFCHistory(Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "start"    # Z

    .line 2004
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->makeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callerUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_37

    .line 2006
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2008
    :cond_37
    return-void
.end method

.method private makeTime()Ljava/lang/String;
    .registers 5

    .line 2013
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2014
    .local v0, "time":J
    sget-object v2, Lcom/android/server/enterprise/general/MiscPolicy;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 12
    .param p1, "fileName"    # Ljava/lang/String;

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 431
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 433
    .local v2, "bytes":[B
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 434
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 436
    nop

    .line 438
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 439
    .local v3, "length":J
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_52

    .line 444
    long-to-int v5, v3

    new-array v5, v5, [B

    move-object v2, v5

    .line 446
    const/4 v5, 0x0

    .line 447
    .local v5, "offset":I
    const/4 v6, 0x0

    .line 448
    .local v6, "numRead":I
    :goto_21
    array-length v7, v2

    if-ge v5, v7, :cond_2f

    array-length v7, v2

    sub-int/2addr v7, v5

    .line 449
    invoke-virtual {v1, v2, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    move v6, v7

    if-ltz v7, :cond_2f

    .line 450
    add-int/2addr v5, v6

    goto :goto_21

    .line 453
    :cond_2f
    array-length v7, v2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_5c
    .catchall {:try_start_3 .. :try_end_30} :catchall_5a

    if-lt v5, v7, :cond_37

    .line 464
    .end local v3    # "length":J
    .end local v5    # "offset":I
    .end local v6    # "numRead":I
    nop

    .line 465
    :try_start_33
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_67

    goto :goto_65

    .line 454
    .restart local v3    # "length":J
    .restart local v5    # "offset":I
    .restart local v6    # "numRead":I
    :cond_37
    :try_start_37
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The file was not completely read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "is":Ljava/io/FileInputStream;
    .end local v2    # "bytes":[B
    .end local p0    # "this":Lcom/android/server/enterprise/general/MiscPolicy;
    .end local p1    # "fileName":Ljava/lang/String;
    throw v7

    .line 440
    .end local v5    # "offset":I
    .end local v6    # "numRead":I
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "bytes":[B
    .restart local p0    # "this":Lcom/android/server/enterprise/general/MiscPolicy;
    .restart local p1    # "fileName":Ljava/lang/String;
    :cond_52
    new-instance v5, Ljava/io/IOException;

    const-string v6, "The file is too big"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "is":Ljava/io/FileInputStream;
    .end local v2    # "bytes":[B
    .end local p0    # "this":Lcom/android/server/enterprise/general/MiscPolicy;
    .end local p1    # "fileName":Ljava/lang/String;
    throw v5
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5a} :catch_5c
    .catchall {:try_start_37 .. :try_end_5a} :catchall_5a

    .line 463
    .end local v3    # "length":J
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "bytes":[B
    .restart local p0    # "this":Lcom/android/server/enterprise/general/MiscPolicy;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catchall_5a
    move-exception v3

    goto :goto_8f

    .line 458
    :catch_5c
    move-exception v3

    .line 459
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5a

    .line 464
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_6c

    .line 465
    :try_start_62
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_67

    .line 466
    :goto_65
    const/4 v1, 0x0

    goto :goto_6c

    .line 468
    :catch_67
    move-exception v3

    .line 469
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_6d

    .line 470
    :cond_6c
    :goto_6c
    nop

    .line 472
    :goto_6d
    const-string v3, "MiscPolicy"

    if-eqz v2, :cond_88

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readFile returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 475
    :cond_88
    const-string/jumbo v4, "readFile returns : null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_8e
    return-object v2

    .line 464
    :goto_8f
    if-eqz v1, :cond_9b

    .line 465
    :try_start_91
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_96

    .line 466
    const/4 v1, 0x0

    goto :goto_9b

    .line 468
    :catch_96
    move-exception v4

    .line 469
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9c

    .line 470
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9b
    :goto_9b
    nop

    .line 471
    :goto_9c
    throw v3
.end method

.method private removeBookmarkFromAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 18
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 1048
    move-object v7, p1

    const-string v8, "MiscPolicy"

    const/4 v9, 0x0

    .line 1049
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1050
    .local v10, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1052
    .local v11, "token":J
    :try_start_9
    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "url = ? AND title = ?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p2, v5, v13

    const/4 v1, 0x1

    aput-object p3, v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v9, v1

    .line 1057
    if-nez v9, :cond_32

    .line 1058
    const-string/jumbo v0, "removeBookmarkFromAndroidBrowser() - No provider found!!!"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_28} :catch_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_28} :catch_8f
    .catchall {:try_start_9 .. :try_end_28} :catchall_8d

    .line 1059
    nop

    .line 1092
    if-eqz v9, :cond_2e

    .line 1093
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1094
    :cond_2e
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1059
    return v13

    .line 1061
    :cond_32
    :try_start_32
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 1063
    .local v1, "first":Z
    if-nez v1, :cond_48

    .line 1064
    const-string/jumbo v0, "removeBookmarkFromAndroidBrowser() - Empty cursor!!!"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_3e} :catch_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_3e} :catch_8f
    .catchall {:try_start_32 .. :try_end_3e} :catchall_8d

    .line 1065
    nop

    .line 1092
    if-eqz v9, :cond_44

    .line 1093
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1094
    :cond_44
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1065
    return v13

    .line 1068
    :cond_48
    :try_start_48
    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 1069
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    .line 1068
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1070
    .local v2, "uri":Landroid/net/Uri;
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v3, v0

    .line 1071
    .local v3, "numVisits":I
    const/4 v0, 0x0

    if-nez v3, :cond_67

    if-eqz v2, :cond_67

    .line 1072
    const-string/jumbo v4, "removeBookmarkFromAndroidBrowser() - Deleting bookmark"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-virtual {p1, v2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_89

    .line 1077
    :cond_67
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1078
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "bookmark"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_75} :catch_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_48 .. :try_end_75} :catch_8f
    .catchall {:try_start_48 .. :try_end_75} :catchall_8d

    .line 1080
    :try_start_75
    const-string/jumbo v5, "removeBookmarkFromAndroidBrowser() - Updating database"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-virtual {p1, v2, v4, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/IllegalStateException; {:try_start_75 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_7e} :catch_ac
    .catchall {:try_start_75 .. :try_end_7e} :catchall_8d

    .line 1084
    goto :goto_89

    .line 1082
    :catch_7f
    move-exception v0

    .line 1083
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_80
    const-string/jumbo v5, "removeFromBookmarks"

    const-string/jumbo v6, "no database!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_80 .. :try_end_89} :catch_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_80 .. :try_end_89} :catch_8f
    .catchall {:try_start_80 .. :try_end_89} :catchall_8d

    .line 1086
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_89
    const/4 v10, 0x1

    .line 1092
    .end local v1    # "first":Z
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "numVisits":I
    if-eqz v9, :cond_b8

    .line 1093
    goto :goto_b5

    .line 1092
    :catchall_8d
    move-exception v0

    goto :goto_bd

    .line 1089
    :catch_8f
    move-exception v0

    .line 1090
    .local v0, "ex":Ljava/lang/IllegalStateException;
    :try_start_90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android provider error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    nop

    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    if-eqz v9, :cond_b8

    .line 1093
    goto :goto_b5

    .line 1087
    :catch_ac
    move-exception v0

    .line 1088
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "Android provider error - unknown uri"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_90 .. :try_end_b2} :catchall_8d

    .line 1092
    nop

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    if-eqz v9, :cond_b8

    .line 1093
    :goto_b5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1094
    :cond_b8
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1095
    nop

    .line 1097
    return v10

    .line 1092
    :goto_bd
    if-eqz v9, :cond_c2

    .line 1093
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1094
    :cond_c2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1095
    throw v0
.end method

.method private removeBookmarkFromChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 1018
    const-string v0, "MiscPolicy"

    const/4 v1, 0x0

    .line 1019
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1021
    .local v2, "token":J
    :try_start_7
    sget-object v4, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v5, "url = ? AND title = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v8, 0x1

    aput-object p3, v6, v8

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1024
    .local v4, "rows":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeBookmarkFromChrome() - rows: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    if-nez v4, :cond_3e

    .line 1033
    sget-object v5, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v6, "url = ?"

    new-array v9, v8, [Ljava/lang/String;

    aput-object p2, v9, v7

    invoke-virtual {p1, v5, v6, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_3d} :catch_45
    .catchall {:try_start_7 .. :try_end_3d} :catchall_43

    move v4, v0

    .line 1037
    :cond_3e
    if-lez v4, :cond_41

    move v7, v8

    :cond_41
    move v1, v7

    .line 1041
    .end local v4    # "rows":I
    goto :goto_4c

    :catchall_43
    move-exception v0

    goto :goto_51

    .line 1038
    :catch_45
    move-exception v4

    .line 1039
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_46
    const-string v5, "Chrome provider error - unknown uri"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_43

    .line 1041
    nop

    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_4c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1042
    nop

    .line 1044
    return v1

    .line 1041
    :goto_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1042
    throw v0
.end method

.method private removeBookmarkFromSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 1000
    const-string v0, "MiscPolicy"

    const/4 v1, 0x0

    .line 1001
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1003
    .local v2, "token":J
    :try_start_7
    sget-object v4, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v5, "url = ? AND title = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v8, 0x1

    aput-object p3, v6, v8

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1006
    .local v4, "rows":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeBookmarkFromSBrowser() - rows: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_2e} :catch_35
    .catchall {:try_start_7 .. :try_end_2e} :catchall_33

    .line 1007
    if-lez v4, :cond_31

    move v7, v8

    :cond_31
    move v1, v7

    .line 1011
    .end local v4    # "rows":I
    goto :goto_3c

    :catchall_33
    move-exception v0

    goto :goto_41

    .line 1008
    :catch_35
    move-exception v4

    .line 1009
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_36
    const-string v5, "Sbrowser provider error - unknown uri"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_33

    .line 1011
    nop

    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_3c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    nop

    .line 1014
    return v1

    .line 1011
    :goto_41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    throw v0
.end method

.method private removeFromBookmarks(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .line 1105
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1106
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    .line 1108
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_18

    .line 1109
    const-string v2, "MiscPolicy"

    const-string/jumbo v4, "removeFromBookmarks() - Could not create context for current user!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return v3

    .line 1113
    :cond_18
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1114
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeBookmarkFromChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1115
    .local v4, "bookmarkRemovedFromChrome":Z
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeBookmarkFromSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1117
    .local v5, "bookmarkRemovedFromSBrowser":Z
    const/4 v6, 0x1

    if-nez v5, :cond_31

    .line 1120
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeBookmarkFromAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2f

    if-eqz v4, :cond_30

    :cond_2f
    move v3, v6

    :cond_30
    return v3

    .line 1123
    :cond_31
    return v6
.end method

.method private retrieveSystemFontSizes()V
    .registers 11

    .line 1861
    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    if-eqz v1, :cond_7

    .line 1862
    return-void

    .line 1864
    :cond_7
    const-string v1, "MiscPolicy"

    const-string/jumbo v2, "retrieveSystemFontSizes(): start to retrieve system font sizes."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1868
    .local v2, "token":J
    const/4 v4, 0x0

    .line 1869
    .local v4, "resources":Landroid/content/res/Resources;
    :try_start_14
    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 1870
    .local v5, "context":Landroid/content/Context;
    if-nez v5, :cond_27

    .line 1871
    const-string/jumbo v0, "retrieveSystemFontSizes(): failed because Setting Context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_9b
    .catchall {:try_start_14 .. :try_end_23} :catchall_99

    .line 1905
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1872
    return-void

    .line 1874
    :cond_27
    :try_start_27
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v4, v6

    .line 1875
    const/4 v6, 0x0

    .line 1876
    .local v6, "resId":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_9b
    .catchall {:try_start_27 .. :try_end_2f} :catchall_99

    const/16 v8, 0x1b

    const-string v9, "array"

    if-le v7, v8, :cond_4b

    .line 1877
    :try_start_35
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/general/MiscPolicy;->supportBigFont(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 1878
    const-string/jumbo v7, "sec_entryvalues_big_font_size"

    invoke-virtual {v4, v7, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .end local v6    # "resId":I
    .local v0, "resId":I
    goto :goto_70

    .line 1880
    .end local v0    # "resId":I
    .restart local v6    # "resId":I
    :cond_43
    const-string/jumbo v7, "sec_entryvalues_8_step_font_size"

    invoke-virtual {v4, v7, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .end local v6    # "resId":I
    .restart local v0    # "resId":I
    goto :goto_70

    .line 1882
    .end local v0    # "resId":I
    .restart local v6    # "resId":I
    :cond_4b
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isSupportSettings2()Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 1883
    invoke-static {}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 1884
    const-string/jumbo v7, "tablet_entryvalues_7_step_font_size"

    invoke-virtual {v4, v7, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move v6, v7

    .line 1886
    :cond_5f
    if-nez v6, :cond_68

    .line 1887
    const-string v7, "entryvalues_7_step_font_size"

    invoke-virtual {v4, v7, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .end local v6    # "resId":I
    .restart local v0    # "resId":I
    goto :goto_70

    .line 1886
    .end local v0    # "resId":I
    .restart local v6    # "resId":I
    :cond_68
    move v0, v6

    goto :goto_70

    .line 1890
    :cond_6a
    const-string v7, "entryvalues_font_size"

    invoke-virtual {v4, v7, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1892
    .end local v6    # "resId":I
    .restart local v0    # "resId":I
    :goto_70
    if-nez v0, :cond_7c

    .line 1893
    const-string/jumbo v6, "retrieveSystemFontSizes() : failed to get resource ID. "

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_78} :catch_9b
    .catchall {:try_start_35 .. :try_end_78} :catchall_99

    .line 1905
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1894
    return-void

    .line 1897
    :cond_7c
    :try_start_7c
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1898
    .local v6, "fontSizeNames":[Ljava/lang/String;
    array-length v7, v6

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 1899
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_86
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v8, v8

    if-ge v7, v8, :cond_98

    .line 1900
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget-object v9, v6, v7

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v8, v7
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_95} :catch_9b
    .catchall {:try_start_7c .. :try_end_95} :catchall_99

    .line 1899
    add-int/lit8 v7, v7, 0x1

    goto :goto_86

    .line 1905
    .end local v0    # "resId":I
    .end local v4    # "resources":Landroid/content/res/Resources;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "fontSizeNames":[Ljava/lang/String;
    .end local v7    # "i":I
    :cond_98
    goto :goto_a3

    :catchall_99
    move-exception v0

    goto :goto_a8

    .line 1902
    :catch_9b
    move-exception v0

    .line 1903
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9c
    const-string/jumbo v4, "retrieveSystemFontSizes() failed: unexpected exception. "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_99

    .line 1905
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1906
    nop

    .line 1907
    return-void

    .line 1905
    :goto_a8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1906
    throw v0
.end method

.method private saveAuthConfigToDb(ILcom/samsung/android/knox/net/ProxyProperties;)Z
    .registers 10
    .param p1, "adminUid"    # I
    .param p2, "properties"    # Lcom/samsung/android/knox/net/ProxyProperties;

    .line 2155
    const/4 v0, 0x1

    .line 2156
    .local v0, "success":Z
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2157
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getAuthConfigList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/net/AuthConfig;

    .line 2158
    .local v2, "config":Lcom/samsung/android/knox/net/AuthConfig;
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2159
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/general/MiscPolicy;->convertAuthConfigToContentValues(ILcom/samsung/android/knox/net/AuthConfig;)Landroid/content/ContentValues;

    move-result-object v4

    .line 2158
    const-string v5, "GlobalProxyAuthTable"

    invoke-virtual {v3, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 2160
    .local v3, "ret":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_2e

    .line 2161
    const/4 v0, 0x0

    .line 2163
    .end local v2    # "config":Lcom/samsung/android/knox/net/AuthConfig;
    .end local v3    # "ret":J
    :cond_2e
    goto :goto_f

    .line 2165
    :cond_2f
    return v0
.end method

.method private declared-synchronized setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "properties"    # Lcom/samsung/android/knox/net/ProxyProperties;

    monitor-enter p0

    .line 2103
    :try_start_1
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_SECURE_NETWORK"

    const-string/jumbo v2, "setGlobalProxy"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2104
    .local v0, "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    const-string/jumbo v1, "proxyTp"

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    move v2, v4

    :goto_1d
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 2105
    const-string/jumbo v1, "proxyAuth"

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    move-result v2

    if-eqz v2, :cond_2b

    move v2, v4

    goto :goto_2c

    :cond_2b
    move v2, v3

    :goto_2c
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 2107
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 2109
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->validateProxyProperties(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v1
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_b2

    if-nez v1, :cond_3a

    .line 2110
    monitor-exit p0

    return v4

    .line 2113
    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v1

    if-nez v1, :cond_4c

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxySetForAdmin(II)Z

    move-result v1
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_b2

    if-nez v1, :cond_4c

    .line 2115
    monitor-exit p0

    return v4

    .line 2118
    .end local p0    # "this":Lcom/android/server/enterprise/general/MiscPolicy;
    :cond_4c
    :try_start_4c
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;

    move-result-object v1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_b2

    if-nez v1, :cond_54

    .line 2119
    monitor-exit p0

    return v4

    .line 2122
    .restart local p0    # "this":Lcom/android/server/enterprise/general/MiscPolicy;
    :cond_54
    :try_start_54
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->createProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 2123
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v2
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_b2

    if-nez v2, :cond_60

    .line 2124
    monitor-exit p0

    return v4

    .line 2128
    :cond_60
    :try_start_60
    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v8, "RESTRICTION"

    const-string/jumbo v9, "globalProxy"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_70
    .catchall {:try_start_60 .. :try_end_70} :catchall_b2

    if-nez v2, :cond_74

    .line 2131
    monitor-exit p0

    return v4

    .line 2134
    :cond_74
    :try_start_74
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearAuthConfigFromDb()V

    .line 2135
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->saveAuthConfigToDb(ILcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v2
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_b2

    if-nez v2, :cond_81

    .line 2136
    monitor-exit p0

    return v4

    .line 2139
    :cond_81
    :try_start_81
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_b2

    .line 2141
    .local v5, "token":J
    :try_start_85
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2, v1}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_ad

    .line 2143
    :try_start_8a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2144
    nop

    .line 2147
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->clearCaches()V

    .line 2149
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v10, "RESTRICTION"

    const-string/jumbo v11, "globalProxy"

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_a7
    .catchall {:try_start_8a .. :try_end_a7} :catchall_b2

    if-eqz v2, :cond_aa

    .line 2151
    goto :goto_ab

    :cond_aa
    move v3, v4

    .line 2149
    :goto_ab
    monitor-exit p0

    return v3

    .line 2143
    .end local p0    # "this":Lcom/android/server/enterprise/general/MiscPolicy;
    :catchall_ad
    move-exception v2

    :try_start_ae
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2144
    throw v2
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_b2

    .line 2102
    .end local v0    # "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v5    # "token":J
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "properties":Lcom/samsung/android/knox/net/ProxyProperties;
    :catchall_b2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setNFCStateChangeAllowedSystemUI(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 2497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2499
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    .line 2500
    .local v2, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setNFCStateChangeAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_14
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 2504
    .end local v2    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    nop

    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2505
    goto :goto_1f

    .line 2504
    :catchall_12
    move-exception v2

    goto :goto_20

    .line 2501
    :catch_14
    move-exception v2

    .line 2502
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_15
    const-string v3, "MiscPolicy"

    const-string/jumbo v4, "setNFCStateChangeAllowedSystemUI() failed. "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_12

    .line 2504
    nop

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_e

    .line 2506
    :goto_1f
    return-void

    .line 2504
    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2505
    throw v2
.end method

.method private supportBigFont(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 2518
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "elite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2519
    const/4 v0, 0x1

    return v0

    .line 2521
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private updateDatabase(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "length"    # J
    .param p6, "mimeType"    # Ljava/lang/String;

    .line 354
    const-string v0, "artist"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 356
    .local v1, "token":J
    const/4 v3, 0x1

    :try_start_7
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->isRingToneEntryExist(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v4

    .line 357
    .local v4, "lRingToneId":J
    const-wide/16 v6, -0x1

    cmp-long v6, v6, v4

    if-eqz v6, :cond_35

    .line 359
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ringtone entry exist deleting it :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 364
    :cond_35
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .local v6, "content":Landroid/content/ContentValues;
    const-string v7, "_data"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v7, "title"

    const-string v8, "IT Admin tone"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v7, "_size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 368
    const-string/jumbo v7, "mime_type"

    const-string v8, "audio/*"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v6, v0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v0, "is_ringtone"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 371
    const-string/jumbo v0, "is_notification"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 372
    const-string/jumbo v0, "is_alarm"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 373
    const-string/jumbo v0, "is_music"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 376
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_8e} :catch_92
    .catchall {:try_start_7 .. :try_end_8e} :catchall_90

    move-object p2, v0

    .end local v4    # "lRingToneId":J
    .end local v6    # "content":Landroid/content/ContentValues;
    goto :goto_96

    .line 381
    :catchall_90
    move-exception v0

    goto :goto_a9

    .line 378
    :catch_92
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    :try_start_93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_90

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_96
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    nop

    .line 384
    if-eqz p2, :cond_a8

    .line 385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 386
    .local v4, "ident":J
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 388
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    .end local v4    # "ident":J
    :cond_a8
    return-void

    .line 381
    :goto_a9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    throw v0
.end method

.method private updateSystemUIMonitor(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2493
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->setNFCStateChangeAllowedSystemUI(IZ)V

    .line 2494
    return-void
.end method

.method private static validateHostName(Ljava/lang/String;)Z
    .registers 12
    .param p0, "hostName"    # Ljava/lang/String;

    .line 2259
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2260
    return v0

    .line 2266
    :cond_4
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 2267
    return v2

    .line 2272
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xff

    if-le v1, v3, :cond_17

    .line 2273
    return v0

    .line 2279
    :cond_17
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2285
    .local v1, "labels":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2286
    .local v3, "isHostnameCandidate":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_42

    .line 2287
    aget-object v5, v1, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2288
    .local v5, "ch":C
    const/16 v6, 0x61

    if-lt v5, v6, :cond_35

    const/16 v6, 0x7a

    if-le v5, v6, :cond_3d

    :cond_35
    const/16 v6, 0x41

    if-lt v5, v6, :cond_3f

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_3f

    .line 2289
    :cond_3d
    const/4 v3, 0x1

    .line 2290
    goto :goto_42

    .line 2286
    .end local v5    # "ch":C
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 2296
    .end local v4    # "i":I
    :cond_42
    :goto_42
    if-nez v3, :cond_45

    .line 2297
    return v0

    .line 2300
    :cond_45
    const/4 v4, 0x0

    .line 2301
    .local v4, "numDots":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_5a

    .line 2302
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_57

    .line 2303
    add-int/lit8 v4, v4, 0x1

    .line 2301
    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 2309
    .end local v5    # "i":I
    :cond_5a
    array-length v5, v1

    if-lt v4, v5, :cond_5e

    .line 2310
    return v0

    .line 2315
    :cond_5e
    array-length v5, v1

    move v6, v0

    :goto_60
    if-ge v6, v5, :cond_70

    aget-object v7, v1, v6

    .line 2316
    .local v7, "label":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x3f

    if-le v8, v9, :cond_6d

    .line 2317
    return v0

    .line 2315
    .end local v7    # "label":Ljava/lang/String;
    :cond_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 2327
    :cond_70
    const-string v5, "^[A-Za-z0-9-]+$"

    .line 2328
    .local v5, "regex":Ljava/lang/String;
    array-length v6, v1

    move v7, v0

    :goto_74
    if-ge v7, v6, :cond_96

    aget-object v8, v1, v7

    .line 2329
    .local v8, "label":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_95

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_95

    .line 2330
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_92

    goto :goto_95

    .line 2328
    .end local v8    # "label":Ljava/lang/String;
    :cond_92
    add-int/lit8 v7, v7, 0x1

    goto :goto_74

    .line 2331
    .restart local v8    # "label":Ljava/lang/String;
    :cond_95
    :goto_95
    return v0

    .line 2335
    .end local v8    # "label":Ljava/lang/String;
    :cond_96
    return v2
.end method

.method private validateIp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "ip"    # Ljava/lang/String;

    .line 2464
    if-eqz p1, :cond_d

    .line 2465
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2466
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1

    .line 2468
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private validateProxyProperties(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .registers 6
    .param p1, "properties"    # Lcom/samsung/android/knox/net/ProxyProperties;

    .line 2045
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2046
    return v1

    .line 2047
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2048
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    .line 2049
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v2

    .line 2050
    .local v2, "proxyPort":I
    if-ltz v2, :cond_2f

    const v3, 0xffff

    if-gt v2, v3, :cond_2f

    .line 2052
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->validateIp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-static {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->validateHostName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_2f

    .line 2055
    .end local v0    # "hostName":Ljava/lang/String;
    .end local v2    # "proxyPort":I
    :cond_2e
    goto :goto_45

    .line 2053
    .restart local v0    # "hostName":Ljava/lang/String;
    .restart local v2    # "proxyPort":I
    :cond_2f
    :goto_2f
    return v1

    .line 2055
    .end local v0    # "hostName":Ljava/lang/String;
    .end local v2    # "proxyPort":I
    :cond_30
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 2056
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_47

    .line 2059
    :cond_45
    :goto_45
    const/4 v0, 0x1

    return v0

    .line 2057
    :cond_47
    :goto_47
    return v1
.end method


# virtual methods
.method public addWebBookmarkBitmap(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "iconBm"    # Landroid/graphics/Bitmap;

    .line 722
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOldSecurityOrNewBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 723
    if-eqz p2, :cond_13

    if-nez p3, :cond_9

    goto :goto_13

    .line 726
    :cond_9
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmark(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    .line 724
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method public addWebBookmarkByteBuffer(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;[B)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "iconBuffer"    # [B

    .line 710
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOldSecurityOrNewBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 711
    if-eqz p2, :cond_13

    if-nez p3, :cond_9

    goto :goto_13

    .line 714
    :cond_9
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmark(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    .line 712
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method public allowNFCStateChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allow"    # Z

    .line 1912
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1913
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "MISC"

    const-string/jumbo v3, "nfcStateChangeAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1916
    .local v0, "ret":Z
    if-eqz p2, :cond_21

    .line 1918
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1921
    .local v1, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v1, :cond_21

    .line 1922
    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setEnableNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1926
    .end local v1    # "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :cond_21
    if-eqz v0, :cond_5d

    .line 1927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1929
    .local v1, "psToken":J
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1930
    :try_start_2a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "MiscPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has change NFC state change to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1931
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1929
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_54
    .catchall {:try_start_2a .. :try_end_54} :catchall_58

    .line 1933
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1934
    goto :goto_5d

    .line 1933
    :catchall_58
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1934
    throw v3

    .line 1936
    .end local v1    # "psToken":J
    :cond_5d
    :goto_5d
    return v0
.end method

.method public changeLockScreenString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 26
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "statement"    # Ljava/lang/String;

    .line 1208
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    .line 1209
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v2, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    .line 1210
    .local v10, "userId":I
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "android"

    const/4 v11, 0x0

    invoke-static {v0, v4, v11, v3}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v12

    .line 1212
    .local v12, "context":Landroid/content/Context;
    const-string v13, "MiscPolicy"

    if-nez v12, :cond_1f

    .line 1213
    const-string v0, "Could not create context for current user!"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return v11

    .line 1217
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1218
    .local v14, "token":J
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1219
    .local v9, "cr":Landroid/content/ContentResolver;
    invoke-direct {v1, v10}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    move-result v8

    .line 1221
    .local v8, "currentSetAdminId":I
    const/4 v0, 0x0

    .line 1222
    .local v0, "ret":Z
    const/4 v3, 0x0

    .line 1224
    .local v3, "revoked":Z
    const/4 v4, -0x1

    if-eq v8, v4, :cond_3d

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v8, v4, :cond_3d

    .line 1225
    const-string v4, "changeLockScreenString():get AdminId failed!! "

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1228
    return v11

    .line 1232
    :cond_3d
    if-eqz p2, :cond_4b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gez v4, :cond_46

    goto :goto_4b

    :cond_46
    move-object/from16 v4, p2

    move/from16 v16, v3

    goto :goto_50

    .line 1233
    :cond_4b
    :goto_4b
    const/4 v3, 0x1

    .line 1234
    const-string v4, ""

    move/from16 v16, v3

    .line 1238
    .end local v3    # "revoked":Z
    .end local p2    # "statement":Ljava/lang/String;
    .local v4, "statement":Ljava/lang/String;
    .local v16, "revoked":Z
    :goto_50
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x100

    if-le v3, v5, :cond_74

    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1240
    const-string v3, "changeLockScreenString():lock screen text is truncated "

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v4

    goto :goto_75

    .line 1238
    :cond_74
    move-object v7, v4

    .line 1244
    .end local v4    # "statement":Ljava/lang/String;
    .local v7, "statement":Ljava/lang/String;
    :goto_75
    const-string v3, "Admin "

    const-string v6, "Couldn\'t write string "

    const-string/jumbo v4, "lock_screen_owner_info"

    const-string/jumbo v5, "lockscreenstring"

    const-string v11, "MISC"

    if-nez v16, :cond_116

    .line 1246
    move/from16 v17, v0

    .end local v0    # "ret":Z
    .local v17, "ret":Z
    const-string v0, "changeLockScreenString(): apply restriction"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 p2, v6

    iget v6, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v18, v8

    .end local v8    # "currentSetAdminId":I
    .local v18, "currentSetAdminId":I
    const/4 v8, 0x1

    invoke-virtual {v0, v6, v11, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    .line 1251
    .end local v17    # "ret":Z
    .local v11, "ret":Z
    if-eqz v11, :cond_10f

    .line 1252
    const-string v0, "changeLockScreenString(): ret is true set value"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :try_start_9e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string/jumbo v5, "lock_screen_owner_info_enabled"

    invoke-interface {v0, v5, v8, v10}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 1258
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, v4, v7, v10}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1260
    const/4 v0, 0x5

    const/4 v4, 0x1

    .line 1261
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v8, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has changed lock screen string to "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_d0} :catch_e6

    .line 1260
    move v3, v0

    const/4 v0, 0x1

    move v5, v0

    move-object/from16 v20, p2

    move-object/from16 v21, v7

    .end local v7    # "statement":Ljava/lang/String;
    .local v21, "statement":Ljava/lang/String;
    move-object v7, v8

    move-object/from16 v8, v19

    move-object/from16 v19, v12

    move-object v12, v9

    .end local v9    # "cr":Landroid/content/ContentResolver;
    .local v12, "cr":Landroid/content/ContentResolver;
    .local v19, "context":Landroid/content/Context;
    move v9, v10

    :try_start_de
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_e1} :catch_e4

    .line 1266
    move-object/from16 v8, v21

    goto :goto_107

    .line 1264
    :catch_e4
    move-exception v0

    goto :goto_ee

    .end local v19    # "context":Landroid/content/Context;
    .end local v21    # "statement":Ljava/lang/String;
    .restart local v7    # "statement":Ljava/lang/String;
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    .local v12, "context":Landroid/content/Context;
    :catch_e6
    move-exception v0

    move-object/from16 v20, p2

    move-object/from16 v21, v7

    move-object/from16 v19, v12

    move-object v12, v9

    .line 1265
    .end local v7    # "statement":Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .local v0, "re":Landroid/os/RemoteException;
    .local v12, "cr":Landroid/content/ContentResolver;
    .restart local v19    # "context":Landroid/content/Context;
    .restart local v21    # "statement":Ljava/lang/String;
    :goto_ee
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v20

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v21

    .end local v21    # "statement":Ljava/lang/String;
    .local v8, "statement":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_107
    const-string/jumbo v0, "my_profile_enabled"

    const/4 v6, 0x0

    invoke-static {v12, v0, v6, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_113

    .line 1251
    .end local v8    # "statement":Ljava/lang/String;
    .end local v19    # "context":Landroid/content/Context;
    .restart local v7    # "statement":Ljava/lang/String;
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    .local v12, "context":Landroid/content/Context;
    :cond_10f
    move-object v8, v7

    move-object/from16 v19, v12

    move-object v12, v9

    .line 1292
    .end local v7    # "statement":Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .restart local v8    # "statement":Ljava/lang/String;
    .local v12, "cr":Landroid/content/ContentResolver;
    .restart local v19    # "context":Landroid/content/Context;
    :goto_113
    move-object v4, v8

    goto/16 :goto_17e

    .line 1274
    .end local v11    # "ret":Z
    .end local v18    # "currentSetAdminId":I
    .end local v19    # "context":Landroid/content/Context;
    .local v0, "ret":Z
    .restart local v7    # "statement":Ljava/lang/String;
    .local v8, "currentSetAdminId":I
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    .local v12, "context":Landroid/content/Context;
    :cond_116
    move/from16 v17, v0

    move/from16 v18, v8

    move-object/from16 v19, v12

    move-object v8, v7

    move-object v12, v9

    move-object v9, v6

    const/4 v6, 0x0

    .end local v0    # "ret":Z
    .end local v7    # "statement":Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .local v8, "statement":Ljava/lang/String;
    .local v12, "cr":Landroid/content/ContentResolver;
    .restart local v17    # "ret":Z
    .restart local v18    # "currentSetAdminId":I
    .restart local v19    # "context":Landroid/content/Context;
    const-string v0, "changeLockScreenString(): revoke restriction"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v7, v11, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    .line 1281
    .end local v17    # "ret":Z
    .restart local v11    # "ret":Z
    :try_start_12d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, v4, v8, v10}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1283
    const/4 v0, 0x5

    const/4 v4, 0x1

    .line 1284
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has cleared the lock screen string."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_12d .. :try_end_152} :catch_163

    .line 1283
    move v3, v0

    const/4 v0, 0x1

    move v5, v0

    move-object/from16 v22, v8

    .end local v8    # "statement":Ljava/lang/String;
    .local v22, "statement":Ljava/lang/String;
    move-object/from16 v8, v17

    move-object v1, v9

    move v9, v10

    :try_start_15b
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_15b .. :try_end_15e} :catch_161

    .line 1289
    move-object/from16 v4, v22

    goto :goto_17e

    .line 1287
    :catch_161
    move-exception v0

    goto :goto_167

    .end local v22    # "statement":Ljava/lang/String;
    .restart local v8    # "statement":Ljava/lang/String;
    :catch_163
    move-exception v0

    move-object/from16 v22, v8

    move-object v1, v9

    .line 1288
    .end local v8    # "statement":Ljava/lang/String;
    .local v0, "re":Landroid/os/RemoteException;
    .restart local v22    # "statement":Ljava/lang/String;
    :goto_167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    .end local v22    # "statement":Ljava/lang/String;
    .restart local v4    # "statement":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_17e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeLockScreenString():ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1296
    return v11
.end method

.method public declared-synchronized clearAllGlobalProxy()V
    .registers 5

    monitor-enter p0

    .line 2420
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2421
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "globalProxy"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2422
    const/4 v1, 0x0

    .line 2423
    .local v1, "nullCv":Landroid/content/ContentValues;
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 2424
    .local v2, "base":Lcom/android/server/enterprise/storage/EdmStorageProviderBase;
    const-string v3, "RESTRICTION"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 2425
    monitor-exit p0

    return-void

    .line 2419
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "nullCv":Landroid/content/ContentValues;
    .end local v2    # "base":Lcom/android/server/enterprise/storage/EdmStorageProviderBase;
    .end local p0    # "this":Lcom/android/server/enterprise/general/MiscPolicy;
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearClipboardData(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1711
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndClipboardPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1712
    const-string v0, "MiscPolicy"

    const-string v1, "clearClipboardData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1715
    .local v1, "token":J
    const/4 v3, 0x0

    :try_start_f
    const-string/jumbo v4, "semclipboard"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1716
    .local v4, "bEx":Landroid/os/IBinder;
    invoke-static {v4}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    .line 1717
    .local v5, "sServiceEx":Landroid/sec/clipboard/IClipboardService;
    if-eqz v5, :cond_2c

    .line 1718
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/sec/clipboard/IClipboardService;->removeAll(Ljava/lang/String;I)Z

    goto :goto_31

    .line 1720
    :cond_2c
    const-string v6, "clearClipboardData() : service is not valid. "

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :goto_31
    const-string/jumbo v6, "simple text"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v6

    .line 1723
    .local v6, "mClip":Landroid/content/ClipData;
    const-string v7, "clipboard"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 1724
    .local v7, "b":Landroid/os/IBinder;
    invoke-static {v7}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v8
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_44} :catch_62
    .catchall {:try_start_f .. :try_end_44} :catchall_60

    .line 1725
    .local v8, "sService":Landroid/content/IClipboard;
    if-nez v8, :cond_4b

    .line 1726
    nop

    .line 1734
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1726
    return v3

    .line 1728
    :cond_4b
    :try_start_4b
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1729
    .local v9, "callingUserId":I
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v6, v10, v9}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5a} :catch_62
    .catchall {:try_start_4b .. :try_end_5a} :catchall_60

    .line 1734
    .end local v4    # "bEx":Landroid/os/IBinder;
    .end local v5    # "sServiceEx":Landroid/sec/clipboard/IClipboardService;
    .end local v6    # "mClip":Landroid/content/ClipData;
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v8    # "sService":Landroid/content/IClipboard;
    .end local v9    # "callingUserId":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1735
    nop

    .line 1736
    const/4 v0, 0x1

    return v0

    .line 1734
    :catchall_60
    move-exception v0

    goto :goto_6d

    .line 1730
    :catch_62
    move-exception v4

    .line 1731
    .local v4, "e":Ljava/lang/Exception;
    :try_start_63
    const-string v5, "clearClipboardData() : failed because error occurs. "

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_60

    .line 1732
    nop

    .line 1734
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1732
    return v3

    .line 1734
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_6d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1735
    throw v0
.end method

.method public clearGlobalProxyEnableEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 2407
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2408
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    return v0
.end method

.method public clearGlobalProxyEnableEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 2412
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2413
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    return v0
.end method

.method public deleteWebBookmark(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;

    .line 733
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOldSecurityOrNewBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 735
    if-nez p2, :cond_8

    .line 736
    const/4 v0, 0x0

    return v0

    .line 738
    :cond_8
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeFromBookmarks(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2525
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 2527
    const-string v0, "Permission Denial: can\'t dump KioskModeService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2528
    return-void

    .line 2531
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2532
    :try_start_13
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2533
    .local v1, "N":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mStartNFCHistoryList.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2534
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    if-ge v2, v1, :cond_57

    .line 2535
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2536
    .local v3, "startNFCHisroty":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2534
    .end local v3    # "startNFCHisroty":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 2538
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_57
    monitor-exit v0

    .line 2539
    return-void

    .line 2538
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_13 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public getCredentialsFails(Ljava/lang/String;)I
    .registers 3
    .param p1, "credentialFailsName"    # Ljava/lang/String;

    .line 324
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceMDMAppCaller()V

    .line 325
    const-string v0, "credentials_fails_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 326
    iget v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsCount:I

    return v0

    .line 328
    :cond_e
    iget v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsState:I

    return v0
.end method

.method public getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 1144
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1146
    :cond_10
    const/4 v0, 0x0

    .line 1148
    .local v0, "lScreenTxt":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1149
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    move-result v2

    .line 1150
    .local v2, "currentSetAdminId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCurrentLockScreenString : currentSetAdminId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiscPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const/4 v3, -0x1

    if-eq v2, v3, :cond_66

    .line 1158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1160
    .local v5, "token":J
    :try_start_37
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    const-string/jumbo v7, "lock_screen_owner_info"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8, v1}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_43} :catch_4b
    .catchall {:try_start_37 .. :try_end_43} :catchall_49

    move-object v0, v3

    .line 1164
    nop

    :goto_45
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1165
    goto :goto_66

    .line 1164
    :catchall_49
    move-exception v3

    goto :goto_62

    .line 1161
    :catch_4b
    move-exception v3

    .line 1162
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_4c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t get string lock_screen_owner_info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_4c .. :try_end_60} :catchall_49

    .line 1164
    nop

    .end local v3    # "re":Landroid/os/RemoteException;
    goto :goto_45

    :goto_62
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1165
    throw v3

    .line 1168
    .end local v5    # "token":J
    :cond_66
    :goto_66
    return-object v0
.end method

.method public getGlobalProxyEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2350
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2351
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    .line 2353
    .local v0, "proxy":Lcom/samsung/android/knox/net/ProxyProperties;
    if-eqz v0, :cond_78

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 2354
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_78

    .line 2358
    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2360
    .local v1, "listString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2361
    .local v2, "stringPort":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2362
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2364
    .local v3, "host":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2366
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_77

    .line 2367
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_67
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2368
    .local v5, "exclusionParts":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2369
    .end local v5    # "exclusionParts":Ljava/lang/String;
    goto :goto_67

    .line 2372
    :cond_77
    return-object v1

    .line 2355
    .end local v1    # "listString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "stringPort":Ljava/lang/Integer;
    .end local v3    # "host":Ljava/lang/String;
    :cond_78
    :goto_78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 2377
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2378
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 485
    const-string v0, "/data/system/SimCard.dat"

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 488
    :try_start_5
    new-instance v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;-><init>()V

    .line 489
    .local v1, "sci":Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;
    const-string v2, "SimChangeTime"

    invoke-static {v2, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_9e

    .line 491
    .local v2, "tmp":Ljava/lang/String;
    const-string v3, "-1"

    if-nez v2, :cond_15

    .line 492
    move-object v2, v3

    .line 493
    :cond_15
    :try_start_15
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeTime:J

    .line 494
    new-instance v4, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-direct {v4}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>()V

    iput-object v4, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 495
    iget-object v4, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v5, "PreviousSimCountryIso"

    invoke-static {v5, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/knox/deviceinfo/SimInfo;->countryIso:Ljava/lang/String;

    .line 498
    iget-object v4, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v5, "PreviousSimOperatorName"

    invoke-static {v5, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operatorName:Ljava/lang/String;

    .line 501
    iget-object v4, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v5, "PreviousSimOperator"

    invoke-static {v5, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operator:Ljava/lang/String;

    .line 503
    iget-object v4, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v5, "PreviousSimPhoneNumber"

    invoke-static {v5, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/knox/deviceinfo/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 506
    iget-object v4, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v5, "PreviousSimSerialNumber"

    invoke-static {v5, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/knox/deviceinfo/SimInfo;->serialNumber:Ljava/lang/String;

    .line 510
    const-string v4, "SimChangeOperation"

    invoke-static {v4, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 512
    if-nez v2, :cond_5e

    .line 513
    move-object v2, v3

    .line 514
    :cond_5e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeOperation:I

    .line 517
    new-instance v3, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-direct {v3}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>()V

    iput-object v3, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 518
    iget-object v3, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v4, "CurrentSimCountryIso"

    invoke-static {v4, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/knox/deviceinfo/SimInfo;->countryIso:Ljava/lang/String;

    .line 521
    iget-object v3, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v4, "CurrentSimOperatorName"

    invoke-static {v4, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operatorName:Ljava/lang/String;

    .line 524
    iget-object v3, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v4, "CurrentSimOperator"

    invoke-static {v4, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operator:Ljava/lang/String;

    .line 526
    iget-object v3, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v4, "CurrentSimPhoneNumber"

    invoke-static {v4, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/knox/deviceinfo/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 529
    iget-object v3, v1, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v4, "CurrentSimSerialNumber"

    invoke-static {v4, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/knox/deviceinfo/SimInfo;->serialNumber:Ljava/lang/String;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_9d} :catch_9e

    .line 533
    return-object v1

    .line 534
    .end local v1    # "sci":Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;
    .end local v2    # "tmp":Ljava/lang/String;
    :catch_9e
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 537
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;-><init>()V

    return-object v0
.end method

.method public getSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1330
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemActiveFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;)F
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1812
    const-string v0, "MiscPolicy"

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 1813
    .local v1, "curConfig":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 1816
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1817
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 1818
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    if-eqz v2, :cond_61

    .line 1819
    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    move-result v2

    .line 1820
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1822
    .local v3, "fontIndex":I
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v4, v4

    if-lt v3, v4, :cond_5b

    .line 1823
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSystemActiveFontSize() : resized font index value. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    .line 1826
    :cond_5b
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v4, v4, v3

    iput v4, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_61} :catch_62

    .line 1830
    .end local v2    # "index":I
    .end local v3    # "fontIndex":I
    :cond_61
    goto :goto_69

    .line 1828
    :catch_62
    move-exception v2

    .line 1829
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getSystemActiveFontSize(): Unable to read font size"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1832
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_69
    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    return v0
.end method

.method public getSystemFontSizes(Lcom/samsung/android/knox/ContextInfo;)[F
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1839
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 1840
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    return-object v0
.end method

.method public getSystemFonts(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1340
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGlobalProxyAllowed()Z
    .registers 4

    .line 2339
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string/jumbo v2, "globalProxy"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2342
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2343
    const/4 v1, 0x0

    return v1

    .line 2346
    :cond_18
    return v1
.end method

.method public isNFCStarted()Z
    .registers 7

    .line 1986
    const/4 v0, 0x0

    .line 1987
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1989
    .local v1, "ident":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 1990
    .local v3, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isAllEnabled()Z

    move-result v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_17
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    if-eqz v4, :cond_13

    .line 1991
    const/4 v0, 0x1

    goto :goto_14

    .line 1993
    :cond_13
    const/4 v0, 0x0

    .line 1998
    .end local v3    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :goto_14
    goto :goto_20

    :catchall_15
    move-exception v3

    goto :goto_25

    .line 1995
    :catch_17
    move-exception v3

    .line 1996
    .local v3, "e":Ljava/lang/Exception;
    :try_start_18
    const-string v4, "MiscPolicy"

    const-string v5, "Error on isNFCStarted"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_15

    .line 1998
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1999
    nop

    .line 2000
    return v0

    .line 1998
    :goto_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1999
    throw v3
.end method

.method public isNFCStateChangeAllowed()Z
    .registers 6

    .line 1940
    const/4 v0, 0x1

    .line 1941
    .local v0, "ret1":Z
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "MISC"

    const-string/jumbo v3, "nfcStateChangeAllowed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1943
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1944
    .local v3, "value":Z
    if-nez v3, :cond_24

    .line 1945
    move v0, v3

    .line 1946
    goto :goto_25

    .line 1948
    .end local v3    # "value":Z
    :cond_24
    goto :goto_10

    .line 1951
    :cond_25
    :goto_25
    const/4 v2, 0x1

    .line 1952
    .local v2, "ret2":Z
    const-string/jumbo v3, "restriction_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1955
    .local v3, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v3, :cond_35

    .line 1956
    invoke-virtual {v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v2

    .line 1958
    :cond_35
    if-eqz v0, :cond_3b

    if-eqz v2, :cond_3b

    const/4 v4, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v4, 0x0

    :goto_3c
    return v4
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 2490
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1677
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 1681
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1683
    .local v0, "userId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 1684
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->updateSystemUIMonitor(I)V

    .line 1686
    :cond_13
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 1696
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    move-result v0

    if-ne v0, p1, :cond_32

    .line 1699
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_owner_info"

    const-string v2, ""

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1b

    .line 1702
    goto :goto_32

    .line 1700
    :catch_1b
    move-exception v0

    .line 1701
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_32
    :goto_32
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_41

    .line 1705
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1707
    :cond_41
    return-void
.end method

.method public retrieveProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 2207
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSystemProcess()V

    .line 2209
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getAuthConfigFromDb()Ljava/util/List;

    move-result-object v0

    .line 2211
    .local v0, "authConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/AuthConfig;>;"
    const/4 v1, 0x0

    .line 2212
    .local v1, "credentials":Ljava/lang/String;
    if-eqz v0, :cond_6c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6c

    .line 2214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/net/AuthConfig;

    .line 2215
    .local v3, "config":Lcom/samsung/android/knox/net/AuthConfig;
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 2216
    .local v4, "hostDatabase":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result v5

    .line 2218
    .local v5, "portDatabase":I
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v6

    .line 2219
    .local v6, "userDatabase":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v7

    .line 2221
    .local v7, "passDatabase":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, ":"

    if-eqz v8, :cond_4d

    if-ne v5, p2, :cond_4d

    .line 2222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2223
    goto :goto_6c

    .line 2224
    :cond_4d
    sget-object v8, Lcom/samsung/android/knox/net/AuthConfig;->ANY_HOST:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    sget v8, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    if-ne v5, v8, :cond_6b

    .line 2226
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2228
    .end local v3    # "config":Lcom/samsung/android/knox/net/AuthConfig;
    .end local v4    # "hostDatabase":Ljava/lang/String;
    .end local v5    # "portDatabase":I
    .end local v6    # "userDatabase":Ljava/lang/String;
    .end local v7    # "passDatabase":Ljava/lang/String;
    :cond_6b
    goto :goto_14

    .line 2231
    :cond_6c
    :goto_6c
    return-object v1
.end method

.method public setCredentialsFails(Ljava/lang/String;I)V
    .registers 4
    .param p1, "credentialFailsName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 312
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceMDMAppCaller()V

    .line 313
    const-string v0, "credentials_fails_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 314
    iput p2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsCount:I

    goto :goto_10

    .line 316
    :cond_e
    iput p2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsState:I

    .line 318
    :goto_10
    return-void
.end method

.method public setGlobalProxyEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/util/List;)I
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2029
    .local p4, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2030
    new-instance v0, Lcom/samsung/android/knox/net/ProxyProperties;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    .line 2031
    .local v0, "properties":Lcom/samsung/android/knox/net/ProxyProperties;
    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {v0, p3}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    .line 2033
    invoke-virtual {v0, p4}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    .line 2034
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    move-result v1

    return v1
.end method

.method public setGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "properties"    # Lcom/samsung/android/knox/net/ProxyProperties;

    .line 2040
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2041
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    move-result v0

    return v0
.end method

.method public setRingerBytes(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "length"    # J
    .param p6, "mimeType"    # Ljava/lang/String;

    .line 336
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 337
    .local v0, "callerUid":I
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/utils/Utils;->isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 342
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_16} :catch_18

    move-object p1, v2

    .line 346
    :goto_17
    goto :goto_3c

    .line 343
    :catch_18
    move-exception v2

    .line 344
    .local v2, "se":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDM_SECURITY Permission is not granted - Check for WRITE_SETTINGS permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiscPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndWriteSettingsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .end local v2    # "se":Ljava/lang/SecurityException;
    goto :goto_17

    .line 348
    :cond_38
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 349
    :goto_3c
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/general/MiscPolicy;->updateDatabase(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    .line 351
    return-void
.end method

.method public setSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "apkPath"    # Ljava/lang/String;

    .line 1315
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1316
    if-eqz p3, :cond_7

    .line 1318
    const/4 v0, 0x0

    return v0

    .line 1320
    :cond_7
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;F)Z
    .registers 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "fontSize"    # F

    .line 1747
    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 1749
    .local v2, "ret":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1750
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 1752
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const-string v3, "MiscPolicy"

    const/4 v4, 0x0

    if-nez v0, :cond_17

    .line 1753
    const-string/jumbo v0, "setSystemActiveFontSize() : failed to retrieve font datas."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    return v4

    .line 1757
    :cond_17
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "font_size"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1758
    .local v6, "currIndex":I
    move/from16 v7, p2

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    move-result v8

    .line 1759
    .local v8, "newIndex":I
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v0, v0

    const/4 v9, 0x1

    add-int/lit8 v10, v0, -0x1

    .line 1761
    .local v10, "indexLength":I
    if-ne v6, v8, :cond_38

    .line 1762
    const-string/jumbo v0, "setSystemActiveFontSize() : same font size"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    return v2

    .line 1768
    :cond_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1770
    .local v11, "token":J
    :try_start_3c
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_be

    .line 1771
    const-string/jumbo v0, "large_font"

    const/high16 v13, 0x1000000

    const-string v14, "android.settings.FONT_SIZE_CHANGED"

    if-ge v6, v10, :cond_61

    if-ne v8, v10, :cond_61

    .line 1772
    :try_start_50
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1773
    .local v4, "i":Landroid/content/Intent;
    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1774
    invoke-virtual {v4, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1775
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v4    # "i":Landroid/content/Intent;
    goto :goto_77

    .line 1776
    :cond_61
    if-ne v6, v10, :cond_77

    if-ge v8, v10, :cond_77

    .line 1777
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v15

    .line 1778
    .local v14, "i":Landroid/content/Intent;
    invoke-virtual {v14, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1779
    invoke-virtual {v14, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1780
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_76
    .catchall {:try_start_50 .. :try_end_76} :catchall_be

    goto :goto_78

    .line 1776
    .end local v14    # "i":Landroid/content/Intent;
    :cond_77
    :goto_77
    nop

    .line 1783
    :goto_78
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1784
    nop

    .line 1788
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    move-object v4, v0

    .line 1789
    .local v4, "curConfig":Landroid/content/res/Configuration;
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v0, v0, v8

    iput v0, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 1791
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1793
    :try_start_8c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1794
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1795
    const/4 v0, 0x7

    if-lt v8, v0, :cond_b5

    .line 1796
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "accessiblity_font_switch"

    invoke-static {v0, v5, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_aa} :catch_ad
    .catchall {:try_start_8c .. :try_end_aa} :catchall_ab

    goto :goto_b5

    .line 1802
    :catchall_ab
    move-exception v0

    goto :goto_ba

    .line 1798
    :catch_ad
    move-exception v0

    .line 1799
    .local v0, "e":Ljava/lang/Exception;
    :try_start_ae
    const-string/jumbo v5, "setSystemActiveFontSize(): failed to set font size. "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b4
    .catchall {:try_start_ae .. :try_end_b4} :catchall_ab

    .line 1800
    const/4 v2, 0x0

    .line 1802
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b5
    :goto_b5
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1803
    nop

    .line 1805
    return v2

    .line 1802
    :goto_ba
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1803
    throw v0

    .line 1783
    .end local v4    # "curConfig":Landroid/content/res/Configuration;
    :catchall_be
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1784
    throw v0
.end method

.method public startNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "start"    # Z

    .line 1962
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1963
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->makeStartNFCHistory(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 1964
    const/4 v0, 0x0

    .line 1965
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1967
    .local v1, "ident":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 1969
    .local v3, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz p2, :cond_1a

    .line 1970
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v4

    move v0, v4

    goto :goto_1f

    .line 1972
    :cond_1a
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_22
    .catchall {:try_start_c .. :try_end_1e} :catchall_20

    move v0, v4

    .line 1980
    .end local v3    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :goto_1f
    goto :goto_2b

    :catchall_20
    move-exception v3

    goto :goto_30

    .line 1977
    :catch_22
    move-exception v3

    .line 1978
    .local v3, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v4, "MiscPolicy"

    const-string v5, "Error on Start/Stop NFC"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 1980
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1981
    nop

    .line 1982
    return v0

    .line 1980
    :goto_30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1981
    throw v3
.end method

.method public systemReady()V
    .registers 1

    .line 1692
    return-void
.end method
