.class public Lcom/android/server/bridge/operations/RCPDumpState;
.super Ljava/lang/Object;
.source "RCPDumpState.java"


# static fields
.field private static final CONTACT_ACCOUNT_TYPE_KNOX:Ljava/lang/String; = "vnd.sec.contact.phone_knox"

.field private static final CONTACT_ACCOUNT_TYPE_KNOX2:Ljava/lang/String; = "vnd.sec.contact.phone_knox2"

.field private static final CONTACT_ACCOUNT_TYPE_KNOX3:Ljava/lang/String; = "vnd.sec.contact.phone_knox3"

.field private static final CONTACT_ACCOUNT_TYPE_PERSONAL:Ljava/lang/String; = "vnd.sec.contact.phone_personal"

.field private static final CONTACT_ACCOUNT_TYPE_SECUREFOLDER:Ljava/lang/String; = "vnd.sec.contact.phone_knox_securefolder"

.field private static final EVENT_ACCOUNT_NAME:Ljava/lang/String; = "calendar_personal"

.field private static final PROVIDER_CALENDNAR:Ljava/lang/String; = "Calendar"

.field private static final PROVIDER_CONTACT:Ljava/lang/String; = "Contact"

.field private static final TABLE_EVENT:Ljava/lang/String; = "Event"

.field private static final TABLE_GROUPS:Ljava/lang/String; = "Group"

.field private static final TABLE_RAW_CONTACT:Ljava/lang/String; = "Raw_Contact"

.field private static final TABLE_TASK:Ljava/lang/String; = "Task"

.field private static final TASK_ACCOUNT_NAME:Ljava/lang/String; = "task_personal_"

.field private static mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;


# instance fields
.field private final TAG:Ljava/lang/String;

.field mContainerUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mOwnerUri:Landroid/net/Uri;

.field mQueryUri:Landroid/net/Uri;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "mContext"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    .line 29
    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mUserManager:Landroid/os/UserManager;

    .line 48
    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    .line 51
    iput-object p1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mUserManager:Landroid/os/UserManager;

    .line 54
    return-void
.end method

.method private dumpStateEvents(Ljava/io/PrintWriter;II)V
    .registers 24
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mSourceId"    # I
    .param p3, "mDestinationId"    # I

    .line 75
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "  is : "

    const-string v6, "0"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpStateEvents , mSourceId : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", DestinationId : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const/4 v7, 0x0

    .local v7, "mSelection":Ljava/lang/String;
    const/4 v0, 0x0

    .line 78
    .local v0, "mSortOrder":Ljava/lang/String;
    const/4 v8, 0x0

    .line 79
    .local v8, "mProjection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 81
    .local v9, "mCursor":Landroid/database/Cursor;
    const-string v10, "_id"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v13

    .line 82
    .end local v8    # "mProjection":[Ljava/lang/String;
    .local v13, "mProjection":[Ljava/lang/String;
    const-string/jumbo v8, "original_id ASC, _id ASC"

    .line 84
    .end local v0    # "mSortOrder":Ljava/lang/String;
    .local v8, "mSortOrder":Ljava/lang/String;
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    .line 85
    if-eqz v3, :cond_44

    .line 86
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto :goto_4c

    .line 88
    :cond_44
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    .line 92
    :goto_4c
    :try_start_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACCOUNT_NAME NOT LIKE ? AND DELETED=? "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->get_exCalendarId(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_61} :catch_bc
    .catchall {:try_start_4c .. :try_end_61} :catchall_b9

    .line 93
    .end local v7    # "mSelection":Ljava/lang/String;
    .local v14, "mSelection":Ljava/lang/String;
    :try_start_61
    const-string v0, "calendar_personal%"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, "mSelectionArgs":[Ljava/lang/String;
    if-nez v3, :cond_6e

    .line 96
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_72

    .line 98
    :cond_6e
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    .line 100
    :goto_72
    iget-object v11, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v12, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 102
    if-eqz v9, :cond_ab

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpStateEvents ,No of Original Events from Source "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v0, "Source Events ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    invoke-direct {v1, v2, v9}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_ab} :catch_b6
    .catchall {:try_start_61 .. :try_end_ab} :catchall_b2

    .line 112
    :cond_ab
    if-eqz v9, :cond_b0

    .line 113
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 118
    .end local v15    # "mSelectionArgs":[Ljava/lang/String;
    :cond_b0
    move-object v7, v14

    goto :goto_c5

    .line 112
    :catchall_b2
    move-exception v0

    move-object v7, v14

    goto/16 :goto_19f

    .line 109
    :catch_b6
    move-exception v0

    move-object v7, v14

    goto :goto_bd

    .line 112
    .end local v14    # "mSelection":Ljava/lang/String;
    .restart local v7    # "mSelection":Ljava/lang/String;
    :catchall_b9
    move-exception v0

    goto/16 :goto_19f

    .line 109
    :catch_bc
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    :goto_bd
    :try_start_bd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_b9

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_c5

    .line 113
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_c5
    :goto_c5
    :try_start_c5
    const-string v17, "ACCOUNT_NAME = ? AND DELETED=? "
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c7} :catch_13b
    .catchall {:try_start_c5 .. :try_end_c7} :catchall_139

    .line 119
    .end local v7    # "mSelection":Ljava/lang/String;
    .local v17, "mSelection":Ljava/lang/String;
    const/4 v0, 0x2

    :try_start_c8
    new-array v0, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calendar_personal"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v7

    const/4 v7, 0x1

    aput-object v6, v0, v7

    move-object/from16 v18, v0

    .line 121
    .local v18, "mSelectionArgs":[Ljava/lang/String;
    if-nez v4, :cond_ea

    .line 122
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_ee

    .line 124
    :cond_ea
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    .line 126
    :goto_ee
    iget-object v14, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v15, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object/from16 v16, v13

    move-object/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 128
    if-eqz v9, :cond_129

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpStateEvents ,No of Synced Events to Destination"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v0, "Destination Events ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    invoke-direct {v1, v2, v9}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_129} :catch_135
    .catchall {:try_start_c8 .. :try_end_129} :catchall_131

    .line 138
    :cond_129
    if-eqz v9, :cond_12e

    .line 139
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 144
    .end local v18    # "mSelectionArgs":[Ljava/lang/String;
    :cond_12e
    move-object/from16 v7, v17

    goto :goto_144

    .line 138
    :catchall_131
    move-exception v0

    move-object/from16 v7, v17

    goto :goto_199

    .line 135
    :catch_135
    move-exception v0

    move-object/from16 v7, v17

    goto :goto_13c

    .line 138
    .end local v17    # "mSelection":Ljava/lang/String;
    .restart local v7    # "mSelection":Ljava/lang/String;
    :catchall_139
    move-exception v0

    goto :goto_199

    .line 135
    :catch_13b
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_13c
    :try_start_13c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13f
    .catchall {:try_start_13c .. :try_end_13f} :catchall_139

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_144

    .line 139
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_144
    :goto_144
    :try_start_144
    iget-object v14, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "Calendar"

    const-string v5, "Event"

    .line 145
    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 144
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 148
    if-eqz v9, :cond_183

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_183

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpStateEvents ,No of Events records in RCP local db  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    const-string v0, "RCP local db (SourceId:DestinationId) :  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    invoke-direct {v1, v2, v9}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_183} :catch_18b
    .catchall {:try_start_144 .. :try_end_183} :catchall_189

    .line 157
    :cond_183
    if-eqz v9, :cond_192

    .line 158
    :goto_185
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_192

    .line 157
    :catchall_189
    move-exception v0

    goto :goto_193

    .line 154
    :catch_18b
    move-exception v0

    .line 155
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_18c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_18f
    .catchall {:try_start_18c .. :try_end_18f} :catchall_189

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_192

    .line 158
    goto :goto_185

    .line 160
    :cond_192
    :goto_192
    return-void

    .line 157
    :goto_193
    if-eqz v9, :cond_198

    .line 158
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_198
    throw v0

    .line 138
    :goto_199
    if-eqz v9, :cond_19e

    .line 139
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_19e
    throw v0

    .line 112
    :goto_19f
    if-eqz v9, :cond_1a4

    .line 113
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_1a4
    throw v0
.end method

.method private dumpStateGroups(Ljava/io/PrintWriter;II)V
    .registers 25
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mSourceId"    # I
    .param p3, "mDestinationId"    # I

    .line 251
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "  is : "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpStateGroups , mSourceId : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", DestinationId : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    const/4 v6, 0x0

    .local v6, "mSelection":Ljava/lang/String;
    const/4 v0, 0x0

    .line 254
    .local v0, "mSortOrder":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "mSelectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 255
    .local v8, "mProjection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 257
    .local v9, "mCursor":Landroid/database/Cursor;
    const-string v10, "_id"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v13

    .line 258
    .end local v8    # "mProjection":[Ljava/lang/String;
    .local v13, "mProjection":[Ljava/lang/String;
    const-string v8, "_id ASC"

    .line 260
    .end local v0    # "mSortOrder":Ljava/lang/String;
    .local v8, "mSortOrder":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    .line 261
    if-eqz v3, :cond_42

    .line 262
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto :goto_4a

    .line 264
    :cond_42
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    .line 268
    :goto_4a
    :try_start_4a
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-eqz v10, :cond_70

    .line 271
    const-string v10, "account_type<>? AND account_type NOT LIKE ? AND _id NOT IN (?,?,?,?)  AND deleted=?"

    move-object v6, v10

    .line 273
    const-string/jumbo v14, "vnd.sec.contact.phone_personal"

    const-string/jumbo v15, "vnd.sec.contact.phone_knox%"

    const-string v16, "1"

    const-string v17, "2"

    const-string v18, "3"

    const-string v19, "4"

    const-string v20, "0"

    filled-new-array/range {v14 .. v20}, [Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    goto :goto_86

    .line 276
    :cond_70
    const-string v10, "account_type<>? AND account_type NOT LIKE ? AND _id NOT IN (?,?,?)  AND deleted=?"

    move-object v6, v10

    .line 278
    const-string/jumbo v14, "vnd.sec.contact.phone_personal"

    const-string/jumbo v15, "vnd.sec.contact.phone_knox%"

    const-string v16, "1"

    const-string v17, "2"

    const-string v18, "3"

    const-string v19, "0"

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 282
    :goto_86
    if-nez v3, :cond_8d

    .line 283
    iget-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_91

    .line 285
    :cond_8d
    iget-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    .line 286
    :goto_91
    iget-object v11, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v12, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v9, v10

    .line 288
    if-eqz v9, :cond_cc

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 289
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dumpStateGroups ,No of Original Groups from Source "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 289
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    const-string v10, "Source Group ID\'s : "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    invoke-direct {v1, v2, v9}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_cc} :catch_d5
    .catchall {:try_start_4a .. :try_end_cc} :catchall_d2

    .line 298
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_cc
    if-eqz v9, :cond_dc

    .line 299
    :goto_ce
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_dc

    .line 298
    :catchall_d2
    move-exception v0

    goto/16 :goto_1ba

    .line 295
    :catch_d5
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_d2

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_dc

    .line 299
    goto :goto_ce

    .line 304
    :cond_dc
    :goto_dc
    :try_start_dc
    const-string v17, "account_type= ?  AND deleted=?"
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_de} :catch_156
    .catchall {:try_start_dc .. :try_end_de} :catchall_154

    .line 305
    .end local v6    # "mSelection":Ljava/lang/String;
    .local v17, "mSelection":Ljava/lang/String;
    const/4 v0, 0x2

    :try_start_df
    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->getContactAccountType(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v6

    const/4 v6, 0x1

    const-string v10, "0"

    aput-object v10, v0, v6
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_ed} :catch_150
    .catchall {:try_start_df .. :try_end_ed} :catchall_14c

    move-object/from16 v18, v0

    .line 307
    .end local v7    # "mSelectionArgs":[Ljava/lang/String;
    .local v18, "mSelectionArgs":[Ljava/lang/String;
    if-nez v4, :cond_f6

    .line 308
    :try_start_f1
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_fa

    .line 310
    :cond_f6
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    .line 311
    :goto_fa
    iget-object v14, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v15, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object/from16 v16, v13

    move-object/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 313
    if-eqz v9, :cond_135

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpStateGroups ,No of Synced Groups to Destination "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    const-string v0, "Destination Group ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    invoke-direct {v1, v2, v9}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_135} :catch_146
    .catchall {:try_start_f1 .. :try_end_135} :catchall_13f

    .line 323
    :cond_135
    if-eqz v9, :cond_13a

    .line 324
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_13a
    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto :goto_15f

    .line 323
    :catchall_13f
    move-exception v0

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_1b4

    .line 320
    :catch_146
    move-exception v0

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto :goto_157

    .line 323
    .end local v18    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v7    # "mSelectionArgs":[Ljava/lang/String;
    :catchall_14c
    move-exception v0

    move-object/from16 v6, v17

    goto :goto_1b4

    .line 320
    :catch_150
    move-exception v0

    move-object/from16 v6, v17

    goto :goto_157

    .line 323
    .end local v17    # "mSelection":Ljava/lang/String;
    .restart local v6    # "mSelection":Ljava/lang/String;
    :catchall_154
    move-exception v0

    goto :goto_1b4

    .line 320
    :catch_156
    move-exception v0

    .line 321
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_157
    :try_start_157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15a
    .catchall {:try_start_157 .. :try_end_15a} :catchall_154

    .line 323
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_15f

    .line 324
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_15f
    :goto_15f
    :try_start_15f
    iget-object v14, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "Contact"

    const-string v5, "Group"

    .line 330
    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 329
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 333
    if-eqz v9, :cond_19e

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpStateGroups ,No of Group records in RCP local db  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    const-string v0, "RCP local db (SourceId:DestinationId) :  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    invoke-direct {v1, v2, v9}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_19e} :catch_1a6
    .catchall {:try_start_15f .. :try_end_19e} :catchall_1a4

    .line 342
    :cond_19e
    if-eqz v9, :cond_1ad

    .line 343
    :goto_1a0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1ad

    .line 342
    :catchall_1a4
    move-exception v0

    goto :goto_1ae

    .line 339
    :catch_1a6
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1a7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1aa
    .catchall {:try_start_1a7 .. :try_end_1aa} :catchall_1a4

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_1ad

    .line 343
    goto :goto_1a0

    .line 345
    :cond_1ad
    :goto_1ad
    return-void

    .line 342
    :goto_1ae
    if-eqz v9, :cond_1b3

    .line 343
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_1b3
    throw v0

    .line 323
    :goto_1b4
    if-eqz v9, :cond_1b9

    .line 324
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_1b9
    throw v0

    .line 298
    :goto_1ba
    if-eqz v9, :cond_1bf

    .line 299
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_1bf
    throw v0
.end method

.method private dumpStateRawContacts(Ljava/io/PrintWriter;II)V
    .registers 25
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mSourceId"    # I
    .param p3, "mDestinationId"    # I

    .line 348
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "  is : "

    const-string v6, "0"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpStateRawContacts , mSourceId : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", DestinationId : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    const/4 v7, 0x0

    .local v7, "mSelection":Ljava/lang/String;
    const/4 v0, 0x0

    .line 351
    .local v0, "mSortOrder":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "mSelectionArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 352
    .local v9, "mProjection":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 354
    .local v10, "mCursor":Landroid/database/Cursor;
    const-string v11, "_id"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v14

    .line 355
    .end local v9    # "mProjection":[Ljava/lang/String;
    .local v14, "mProjection":[Ljava/lang/String;
    const-string v9, "_id ASC"

    .line 357
    .end local v0    # "mSortOrder":Ljava/lang/String;
    .local v9, "mSortOrder":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    .line 358
    if-eqz v3, :cond_44

    .line 359
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto :goto_4c

    .line 361
    :cond_44
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    .line 365
    :goto_4c
    :try_start_4c
    const-string v15, "account_type<>? AND account_type NOT LIKE ? AND deleted=?"
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4e} :catch_ba
    .catchall {:try_start_4c .. :try_end_4e} :catchall_b7

    .line 367
    .end local v7    # "mSelection":Ljava/lang/String;
    .local v15, "mSelection":Ljava/lang/String;
    :try_start_4e
    const-string/jumbo v0, "vnd.sec.contact.phone_personal"

    const-string/jumbo v7, "vnd.sec.contact.phone_knox%"

    filled-new-array {v0, v7, v6}, [Ljava/lang/String;

    move-result-object v16
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_58} :catch_b4
    .catchall {:try_start_4e .. :try_end_58} :catchall_b0

    .line 369
    .end local v8    # "mSelectionArgs":[Ljava/lang/String;
    .local v16, "mSelectionArgs":[Ljava/lang/String;
    if-nez v3, :cond_5f

    .line 370
    :try_start_5a
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_63

    .line 372
    :cond_5f
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    .line 374
    :goto_63
    iget-object v12, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 376
    if-eqz v10, :cond_9c

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpStateRawContacts ,No of Original Raw_Contacts from Source "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    const-string v0, "Source Raw_Contacts ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    invoke-direct {v1, v2, v10}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_9c} :catch_ab
    .catchall {:try_start_5a .. :try_end_9c} :catchall_a5

    .line 386
    :cond_9c
    if-eqz v10, :cond_a1

    .line 387
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_a1
    move-object v7, v15

    move-object/from16 v8, v16

    goto :goto_c3

    .line 386
    :catchall_a5
    move-exception v0

    move-object v7, v15

    move-object/from16 v8, v16

    goto/16 :goto_1a1

    .line 383
    :catch_ab
    move-exception v0

    move-object v7, v15

    move-object/from16 v8, v16

    goto :goto_bb

    .line 386
    .end local v16    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v8    # "mSelectionArgs":[Ljava/lang/String;
    :catchall_b0
    move-exception v0

    move-object v7, v15

    goto/16 :goto_1a1

    .line 383
    :catch_b4
    move-exception v0

    move-object v7, v15

    goto :goto_bb

    .line 386
    .end local v15    # "mSelection":Ljava/lang/String;
    .restart local v7    # "mSelection":Ljava/lang/String;
    :catchall_b7
    move-exception v0

    goto/16 :goto_1a1

    .line 383
    :catch_ba
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    :goto_bb
    :try_start_bb
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_b7

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v10, :cond_c3

    .line 387
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_c3
    :goto_c3
    :try_start_c3
    const-string v18, "account_type= ? AND deleted=?"
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c5} :catch_13d
    .catchall {:try_start_c3 .. :try_end_c5} :catchall_13b

    .line 393
    .end local v7    # "mSelection":Ljava/lang/String;
    .local v18, "mSelection":Ljava/lang/String;
    const/4 v0, 0x2

    :try_start_c6
    new-array v0, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->getContactAccountType(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v7

    const/4 v7, 0x1

    aput-object v6, v0, v7
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d2} :catch_137
    .catchall {:try_start_c6 .. :try_end_d2} :catchall_133

    move-object/from16 v19, v0

    .line 395
    .end local v8    # "mSelectionArgs":[Ljava/lang/String;
    .local v19, "mSelectionArgs":[Ljava/lang/String;
    if-nez v4, :cond_db

    .line 396
    :try_start_d6
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_df

    .line 398
    :cond_db
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    .line 400
    :goto_df
    iget-object v15, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    move-object/from16 v17, v14

    move-object/from16 v20, v9

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 402
    if-eqz v10, :cond_11c

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpStateRawContacts ,No of Synced Raw_Contacts to Destination "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    const-string v0, "Destination Raw_Contacts ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    invoke-direct {v1, v2, v10}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_11c} :catch_12d
    .catchall {:try_start_d6 .. :try_end_11c} :catchall_126

    .line 412
    :cond_11c
    if-eqz v10, :cond_121

    .line 413
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 418
    :cond_121
    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto :goto_146

    .line 412
    :catchall_126
    move-exception v0

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto/16 :goto_19b

    .line 409
    :catch_12d
    move-exception v0

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto :goto_13e

    .line 412
    .end local v19    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v8    # "mSelectionArgs":[Ljava/lang/String;
    :catchall_133
    move-exception v0

    move-object/from16 v7, v18

    goto :goto_19b

    .line 409
    :catch_137
    move-exception v0

    move-object/from16 v7, v18

    goto :goto_13e

    .line 412
    .end local v18    # "mSelection":Ljava/lang/String;
    .restart local v7    # "mSelection":Ljava/lang/String;
    :catchall_13b
    move-exception v0

    goto :goto_19b

    .line 409
    :catch_13d
    move-exception v0

    .line 410
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_13e
    :try_start_13e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_141
    .catchall {:try_start_13e .. :try_end_141} :catchall_13b

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v10, :cond_146

    .line 413
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 418
    :cond_146
    :goto_146
    :try_start_146
    iget-object v15, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "Contact"

    const-string v5, "Raw_Contact"

    .line 419
    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 418
    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 422
    if-eqz v10, :cond_185

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_185

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpStateRawContacts ,No of Raw_Contacts records in RCP local db  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    const-string v0, "RCP local db (SourceId:DestinationId) :  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    invoke-direct {v1, v2, v10}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_185} :catch_18d
    .catchall {:try_start_146 .. :try_end_185} :catchall_18b

    .line 432
    :cond_185
    if-eqz v10, :cond_194

    .line 433
    :goto_187
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_194

    .line 432
    :catchall_18b
    move-exception v0

    goto :goto_195

    .line 429
    :catch_18d
    move-exception v0

    .line 430
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_18e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_18b

    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v10, :cond_194

    .line 433
    goto :goto_187

    .line 435
    :cond_194
    :goto_194
    return-void

    .line 432
    :goto_195
    if-eqz v10, :cond_19a

    .line 433
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_19a
    throw v0

    .line 412
    :goto_19b
    if-eqz v10, :cond_1a0

    .line 413
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_1a0
    throw v0

    .line 386
    :goto_1a1
    if-eqz v10, :cond_1a6

    .line 387
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_1a6
    throw v0
.end method

.method private dumpStateTasks(Ljava/io/PrintWriter;II)V
    .registers 24
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mSourceId"    # I
    .param p3, "mDestinationId"    # I

    .line 163
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "  is : "

    const-string v6, "0"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpStateTasks , mSourceId : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", DestinationId : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    const/4 v7, 0x0

    .local v7, "mSelection":Ljava/lang/String;
    const/4 v0, 0x0

    .line 166
    .local v0, "mSortOrder":Ljava/lang/String;
    const/4 v8, 0x0

    .line 167
    .local v8, "mProjection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 169
    .local v9, "mCursor":Landroid/database/Cursor;
    const-string v10, "_id"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v13

    .line 170
    .end local v8    # "mProjection":[Ljava/lang/String;
    .local v13, "mProjection":[Ljava/lang/String;
    const-string v8, "_id ASC"

    .line 172
    .end local v0    # "mSortOrder":Ljava/lang/String;
    .local v8, "mSortOrder":Ljava/lang/String;
    const-string v0, "content://com.android.calendar/syncTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    .line 173
    if-eqz v3, :cond_45

    .line 174
    invoke-direct {v1, v0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto :goto_4b

    .line 176
    :cond_45
    invoke-direct {v1, v0, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    .line 180
    :goto_4b
    :try_start_4b
    const-string v14, "_sync_account NOT LIKE ? AND DELETED=?"
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4d} :catch_a9
    .catchall {:try_start_4b .. :try_end_4d} :catchall_a6

    .line 181
    .end local v7    # "mSelection":Ljava/lang/String;
    .local v14, "mSelection":Ljava/lang/String;
    :try_start_4d
    const-string/jumbo v0, "task_personal_%"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v15

    .line 183
    .local v15, "mSelectionArgs":[Ljava/lang/String;
    if-nez v3, :cond_5b

    .line 184
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_5f

    .line 186
    :cond_5b
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    .line 188
    :goto_5f
    iget-object v11, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v12, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 190
    if-eqz v9, :cond_98

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpStateTasks ,No of Original Tasks from Source "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    const-string v0, "Source Tasks ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    invoke-direct {v1, v2, v9}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_98} :catch_a3
    .catchall {:try_start_4d .. :try_end_98} :catchall_9f

    .line 200
    :cond_98
    if-eqz v9, :cond_9d

    .line 201
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 206
    .end local v15    # "mSelectionArgs":[Ljava/lang/String;
    :cond_9d
    move-object v7, v14

    goto :goto_b2

    .line 200
    :catchall_9f
    move-exception v0

    move-object v7, v14

    goto/16 :goto_18d

    .line 197
    :catch_a3
    move-exception v0

    move-object v7, v14

    goto :goto_aa

    .line 200
    .end local v14    # "mSelection":Ljava/lang/String;
    .restart local v7    # "mSelection":Ljava/lang/String;
    :catchall_a6
    move-exception v0

    goto/16 :goto_18d

    .line 197
    :catch_a9
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    :goto_aa
    :try_start_aa
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_a6

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_b2

    .line 201
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_b2
    :goto_b2
    :try_start_b2
    const-string v17, "_sync_account = ? AND DELETED=?"
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b4} :catch_129
    .catchall {:try_start_b2 .. :try_end_b4} :catchall_127

    .line 207
    .end local v7    # "mSelection":Ljava/lang/String;
    .local v17, "mSelection":Ljava/lang/String;
    const/4 v0, 0x2

    :try_start_b5
    new-array v0, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "task_personal_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v7

    const/4 v7, 0x1

    aput-object v6, v0, v7

    move-object/from16 v18, v0

    .line 209
    .local v18, "mSelectionArgs":[Ljava/lang/String;
    if-nez v4, :cond_d8

    .line 210
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_dc

    .line 212
    :cond_d8
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    .line 214
    :goto_dc
    iget-object v14, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v15, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object/from16 v16, v13

    move-object/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 216
    if-eqz v9, :cond_117

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpStateTasks ,No of Synced Tasks to Destination "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    const-string v0, "Destination Tasks ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    invoke-direct {v1, v2, v9}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_117} :catch_123
    .catchall {:try_start_b5 .. :try_end_117} :catchall_11f

    .line 226
    :cond_117
    if-eqz v9, :cond_11c

    .line 227
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 232
    .end local v18    # "mSelectionArgs":[Ljava/lang/String;
    :cond_11c
    move-object/from16 v7, v17

    goto :goto_132

    .line 226
    :catchall_11f
    move-exception v0

    move-object/from16 v7, v17

    goto :goto_187

    .line 223
    :catch_123
    move-exception v0

    move-object/from16 v7, v17

    goto :goto_12a

    .line 226
    .end local v17    # "mSelection":Ljava/lang/String;
    .restart local v7    # "mSelection":Ljava/lang/String;
    :catchall_127
    move-exception v0

    goto :goto_187

    .line 223
    :catch_129
    move-exception v0

    .line 224
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_12a
    :try_start_12a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_127

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_132

    .line 227
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_132
    :goto_132
    :try_start_132
    iget-object v14, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "Calendar"

    const-string v5, "Task"

    .line 233
    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 232
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 236
    if-eqz v9, :cond_171

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_171

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpStateTasks ,No of tasks records in RCP local db  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string v0, "RCP local db (SourceId:DestinationId) :  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    invoke-direct {v1, v2, v9}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_171} :catch_179
    .catchall {:try_start_132 .. :try_end_171} :catchall_177

    .line 245
    :cond_171
    if-eqz v9, :cond_180

    .line 246
    :goto_173
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_180

    .line 245
    :catchall_177
    move-exception v0

    goto :goto_181

    .line 242
    :catch_179
    move-exception v0

    .line 243
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_17a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17d
    .catchall {:try_start_17a .. :try_end_17d} :catchall_177

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_180

    .line 246
    goto :goto_173

    .line 248
    :cond_180
    :goto_180
    return-void

    .line 245
    :goto_181
    if-eqz v9, :cond_186

    .line 246
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_186
    throw v0

    .line 226
    :goto_187
    if-eqz v9, :cond_18c

    .line 227
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_18c
    throw v0

    .line 200
    :goto_18d
    if-eqz v9, :cond_192

    .line 201
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_192
    throw v0
.end method

.method private getContactAccountType(I)Ljava/lang/String;
    .registers 5
    .param p1, "mUserId"    # I

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "mAccountType":Ljava/lang/String;
    if-nez p1, :cond_7

    .line 544
    const-string/jumbo v0, "vnd.sec.contact.phone_personal"

    goto :goto_34

    .line 546
    :cond_7
    iget-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 547
    .local v1, "mUserInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->isFirstContainer(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 548
    const-string/jumbo v0, "vnd.sec.contact.phone_knox"

    goto :goto_34

    .line 549
    :cond_17
    invoke-direct {p0, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->isSecondContainer(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 550
    const-string/jumbo v0, "vnd.sec.contact.phone_knox2"

    goto :goto_34

    .line 551
    :cond_21
    invoke-direct {p0, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->isThirdContainer(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 552
    const-string/jumbo v0, "vnd.sec.contact.phone_knox3"

    goto :goto_34

    .line 553
    :cond_2b
    invoke-direct {p0, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->isSecureFolder(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 554
    const-string/jumbo v0, "vnd.sec.contact.phone_knox_securefolder"

    .line 556
    .end local v1    # "mUserInfo":Landroid/content/pm/UserInfo;
    :cond_34
    :goto_34
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/io/PrintWriter;)Lcom/android/server/bridge/operations/RCPDumpState;
    .registers 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;

    .line 57
    sget-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/RCPDumpState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    .line 59
    :cond_b
    sget-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    return-object v0
.end method

.method private getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 11
    .param p1, "mSourceId"    # I
    .param p2, "mDestinationId"    # I
    .param p3, "mProviderName"    # Ljava/lang/String;
    .param p4, "mTableName"    # Ljava/lang/String;

    .line 560
    const/4 v0, 0x0

    .line 562
    .local v0, "mUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "AUTHORITY":Ljava/lang/String;
    const/4 v2, 0x0

    .line 564
    .local v2, "mUserTablePathName":Ljava/lang/String;
    if-nez p1, :cond_7

    .line 565
    move v3, p2

    .local v3, "mContainerId":I
    goto :goto_8

    .line 567
    .end local v3    # "mContainerId":I
    :cond_7
    move v3, p1

    .line 569
    .restart local v3    # "mContainerId":I
    :goto_8
    invoke-direct {p0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 570
    const-string v1, "com.samsung.knox.securefolder.rcpcomponents.sync.rcpdumpstateprovider"

    goto :goto_13

    .line 572
    :cond_11
    const-string v1, "com.samsung.android.knox.containeragent.rcpcomponents.sync.rcpdumpstateprovider"

    .line 574
    :goto_13
    const-string v4, "Contact"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 575
    const-string v4, "Group"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 576
    if-nez p2, :cond_29

    .line 577
    const-string/jumbo v2, "ownergroup"

    goto :goto_66

    .line 579
    :cond_29
    const-string v2, "containergroup"

    goto :goto_66

    .line 580
    :cond_2c
    const-string v4, "Raw_Contact"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 581
    if-nez p2, :cond_3a

    .line 582
    const-string/jumbo v2, "ownerrawcontact"

    goto :goto_66

    .line 584
    :cond_3a
    const-string v2, "containerrawcontact"

    goto :goto_66

    .line 586
    :cond_3d
    const-string v4, "Calendar"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 587
    const-string v4, "Event"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 588
    if-nez p2, :cond_53

    .line 589
    const-string/jumbo v2, "ownerevent"

    goto :goto_66

    .line 591
    :cond_53
    const-string v2, "containerevent"

    goto :goto_66

    .line 592
    :cond_56
    const-string v4, "Task"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 593
    if-nez p2, :cond_64

    .line 594
    const-string/jumbo v2, "ownertask"

    goto :goto_66

    .line 596
    :cond_64
    const-string v2, "containertask"

    .line 600
    :cond_66
    :goto_66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 600
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 602
    return-object v0
.end method

.method private get_exCalendarId(I)Ljava/lang/String;
    .registers 11
    .param p1, "mUserId"    # I

    .line 461
    const-string v0, ""

    .line 462
    .local v0, "calendar":Ljava/lang/String;
    const/4 v1, 0x0

    .line 464
    .local v1, "mCursor":Landroid/database/Cursor;
    if-nez p1, :cond_a

    .line 465
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_12

    .line 467
    :cond_a
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2, p1}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    .line 475
    :goto_12
    :try_start_12
    const-string/jumbo v6, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND account_name is \'local.samsungholiday\')"

    .line 476
    .local v6, "selection":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 480
    if-eqz v1, :cond_8f

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 482
    const-string v2, "AND calendar_id IN ("

    move-object v0, v2

    .line 483
    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " id count fetched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_4f
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_75

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_82

    .line 488
    :cond_75
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 489
    :goto_82
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 491
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 493
    :cond_8f
    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " final calendar "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_12 .. :try_end_a5} :catchall_ac

    .line 495
    nop

    .end local v6    # "selection":Ljava/lang/String;
    if-eqz v1, :cond_ab

    .line 496
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 498
    :cond_ab
    return-object v0

    .line 495
    :catchall_ac
    move-exception v2

    if-eqz v1, :cond_b2

    .line 496
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 497
    :cond_b2
    throw v2
.end method

.method private insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 7
    .param p1, "mUri"    # Landroid/net/Uri;
    .param p2, "mUserId"    # I

    .line 533
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 534
    return-object p1

    .line 536
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, "mUriBuilder":Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private isFirstContainer(Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p1, "uInfo"    # Landroid/content/pm/UserInfo;

    .line 666
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v0

    return v0
.end method

.method private isSecondContainer(Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p1, "uInfo"    # Landroid/content/pm/UserInfo;

    .line 670
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v0

    return v0
.end method

.method private isSecureFolder(Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p1, "uInfo"    # Landroid/content/pm/UserInfo;

    .line 678
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    return v0
.end method

.method private isSecureFolderId(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 662
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    return v0
.end method

.method private isThirdContainer(Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p1, "uInfo"    # Landroid/content/pm/UserInfo;

    .line 674
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v0

    return v0
.end method

.method private printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    .registers 4
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mCursor"    # Landroid/database/Cursor;

    .line 450
    :goto_0
    if-eqz p2, :cond_1c

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1c

    .line 451
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 452
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 453
    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_1c
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method private printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    .registers 5
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mCursor"    # Landroid/database/Cursor;

    .line 438
    :goto_0
    if-eqz p2, :cond_40

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 441
    goto :goto_40

    .line 443
    :cond_3a
    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_40
    :goto_40
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method private printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "AUTHORITY"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 625
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 626
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_90

    .line 627
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 629
    :cond_37
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "operation"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "  %s"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 630
    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v6, "start_time"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "%25s"

    invoke-virtual {p1, v6, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 631
    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "finish_time"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {p1, v6, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 632
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "result"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v4, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 633
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 634
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_37

    .line 636
    :cond_8d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 638
    :cond_90
    return-void
.end method


# virtual methods
.method public dumpBackupAndRestoreHistory(Ljava/io/PrintWriter;I)V
    .registers 11
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "userId"    # I

    .line 641
    const-string v0, "com.samsung.knox.securefolder"

    .line 642
    .local v0, "AUTHORITY":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpBackupAndRestoreHistory , userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bnr_logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 644
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 645
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_83

    .line 646
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 648
    :cond_4f
    const-string/jumbo v3, "timeStamp: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    const-string/jumbo v3, "timestamp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    const-string/jumbo v3, "text: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    const-string/jumbo v3, "text"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 654
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 656
    :cond_80
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_83
    return-void
.end method

.method public dumpStateCalendar(Ljava/io/PrintWriter;II)V
    .registers 5
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mSourceId"    # I
    .param p3, "mDestinationId"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateEvents(Ljava/io/PrintWriter;II)V

    .line 64
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateTasks(Ljava/io/PrintWriter;II)V

    .line 66
    return-void
.end method

.method public dumpStateContact(Ljava/io/PrintWriter;II)V
    .registers 5
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mSourceId"    # I
    .param p3, "mDestinationId"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateGroups(Ljava/io/PrintWriter;II)V

    .line 70
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateRawContacts(Ljava/io/PrintWriter;II)V

    .line 72
    return-void
.end method

.method public dumpStateContainerSyncHistory(Ljava/io/PrintWriter;I)V
    .registers 5
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "userId"    # I

    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, "AUTHORITY":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 608
    const-string v0, "com.samsung.knox.securefolder.rcpcomponents.sync.rcpdumpstateprovider"

    goto :goto_c

    .line 610
    :cond_a
    const-string v0, "com.samsung.android.knox.containeragent.rcpcomponents.sync.rcpdumpstateprovider"

    .line 613
    :goto_c
    const-string v1, "Contact import history:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    const-string v1, "/container_contact_sync_history/"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 615
    const-string v1, "Contact export history:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    const-string v1, "/owner_contact_sync_history/"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 617
    const-string v1, "Calendar import history:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    const-string v1, "/container_calendar_sync_history/"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 619
    const-string v1, "Calendar export history:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    const-string v1, "/owner_calendar_sync_history/"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 621
    return-void
.end method

.method public dumpStateFileOpsTable(Ljava/io/PrintWriter;I)V
    .registers 11
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "userId"    # I

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "AUTHORITY":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 503
    const-string v0, "com.samsung.knox.securefolder.rcpcomponents.move.provider.knoxcontentmgrdbprovider"

    goto :goto_c

    .line 505
    :cond_a
    const-string v0, "com.samsung.android.knox.containeragent.rcpcomponents.move.provider.knoxcontentmgrdbprovider"

    .line 506
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 507
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 509
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_d5

    .line 510
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 512
    :cond_49
    const-string/jumbo v3, "timeStamp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 513
    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    const-string/jumbo v3, "operation"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 516
    const-string v3, " ret:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    const-string/jumbo v3, "resultCode"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 518
    const-string v3, " srcUri:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 519
    const-string/jumbo v3, "srcUri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    const-string v3, " destUri:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 521
    const-string v3, "destUri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 522
    const-string v3, " src:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 523
    const-string/jumbo v3, "source"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    const-string v3, " dest:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    const-string v3, "destination"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_49

    .line 528
    :cond_d2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_d5
    return-void
.end method
