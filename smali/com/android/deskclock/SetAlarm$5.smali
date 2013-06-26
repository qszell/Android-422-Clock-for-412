.class Lcom/android/deskclock/SetAlarm$5;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/SetAlarm;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/SetAlarm;

.field final synthetic val$p:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/deskclock/SetAlarm;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/deskclock/SetAlarm$5;->this$0:Lcom/android/deskclock/SetAlarm;

    iput-object p2, p0, Lcom/android/deskclock/SetAlarm$5;->val$p:Landroid/preference/Preference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$5;->val$p:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$5;->this$0:Lcom/android/deskclock/SetAlarm;

    #getter for: Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/deskclock/SetAlarm;->access$200(Lcom/android/deskclock/SetAlarm;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$5;->this$0:Lcom/android/deskclock/SetAlarm;

    #getter for: Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/deskclock/SetAlarm;->access$200(Lcom/android/deskclock/SetAlarm;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$5;->this$0:Lcom/android/deskclock/SetAlarm;

    const/4 v1, 0x0

    #calls: Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J
    invoke-static {v0, v1}, Lcom/android/deskclock/SetAlarm;->access$100(Lcom/android/deskclock/SetAlarm;Lcom/android/deskclock/Alarm;)J

    .line 223
    return-void
.end method
